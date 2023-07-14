<?php
include "connect.php";
$nameProduct = $_POST["nameProduct"];
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
if (!empty($nameProduct)) {
    $query = "SELECT * FROM product WHERE name LIKE '%$nameProduct%'AND quantity>0";
    $arrayProductSearch = array();
    $data = mysqli_query($connect, $query);
    if ($data) {
        while ($row = mysqli_fetch_assoc($data)) {
            array_push($arrayProductSearch, new Product($row["id"], $row["name"], $row["price"], $row["picture"], $row["description"], $row["type"], $row["quantity"]));
        }
        if (count($arrayProductSearch) > 0) {
            echo json_encode($arrayProductSearch);
        }
    }
}
?>
