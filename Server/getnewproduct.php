<?php
include "connect.php";
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
$arrayNewProduct = array();
$query = "SELECT * FROM product WHERE quantity>0 ORDER BY id DESC";
$data = mysqli_query($connect, $query);
if ($data) {
    while ($row = mysqli_fetch_assoc($data)) {
        array_push($arrayNewProduct, new Product($row["id"], $row["name"], $row["price"], $row["picture"], $row["description"], $row["type"], $row["quantity"]));
    }
    if (count($arrayNewProduct) > 0) {
        echo json_encode($arrayNewProduct);
    } else {
        echo "Failed !";
    }
}
?>
