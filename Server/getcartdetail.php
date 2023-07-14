<?php
include "connect.php";
$userId = $_POST['userId'];
class Cart
{
    public $idProduct;
    public $nameProduct;
    public $totalPrice;
    public $pictureProduct;
    public $quantity;
    public $quantityRemain;
    public function __construct($idProduct, $nameProduct, $totalPrice, $pictureProduct, $quantity, $quantityRemain)
    {
        $this->idProduct = $idProduct;
        $this->nameProduct = $nameProduct;
        $this->totalPrice = $totalPrice;
        $this->pictureProduct = $pictureProduct;
        $this->quantity = $quantity;
        $this->quantityRemain=$quantityRemain;
    }
}
$arrayCart = array();
$query = "SELECT product_id, name, cart_detail.quantity*price AS total_price, picture, cart_detail.quantity, product.quantity AS quantity_remain FROM cart_detail, product WHERE cart_detail.product_id=product.id AND cart_detail.cart_id=(SELECT id FROM cart WHERE cart.user_id='$userId')";
$data = mysqli_query($connect, $query);
if ($data) {
    while ($row = mysqli_fetch_assoc($data)) {
        array_push($arrayCart, new Cart($row["product_id"], $row["name"], $row["total_price"], $row["picture"], $row["quantity"],$row["quantity_remain"]));
    }
    if (count($arrayCart) > 0) {
        echo json_encode($arrayCart);
    }
}
?>
