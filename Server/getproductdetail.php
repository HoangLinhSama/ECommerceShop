<?php
include "connect.php";
$page = $_POST['page']; // so trang cua man hinh hien thi san pham (1,2,3,...)
$type = $_POST['type']; // loai san pham : 1 la dien thoai, 2 la laptop
$total = $_POST['total']; // tong so san pham muon hien thi tren mot trang
$position = ($page - 1) * $total; // vi tri bat dau lay gia tri
class Product
{
    public $id;
    public $name;
    public $price;
    public $picture;
    public $description;
    public $type;
    public $quantity;
    public function __construct($id, $name, $price, $picture, $description, $type, $quantity)
    {
        $this->id = $id;
        $this->name = $name;
        $this->price = $price;
        $this->picture = $picture;
        $this->description = $description;
        $this->type = $type;
        $this->quantity = $quantity;
    }
}
$arrayProductDetail = array();
$query = "SELECT * FROM product WHERE type='$type' AND quantity>0 LIMIT $position,$total";
$data = mysqli_query($connect, $query);
if ($data) {
    while ($row = mysqli_fetch_assoc($data)) {
        array_push($arrayProductDetail, new Product($row["id"], $row["name"], $row["price"], $row["picture"], $row["description"], $row["type"], $row["quantity"]));
    }
    if (count($arrayProductDetail) > 0) {
        echo json_encode($arrayProductDetail);
    }
}
?>
