<?php
include "connect.php";
$userId = $_POST["userId"];
class Order
{
    public $id;
    public $date;
    public $totalPrice;
    public $arrayProduct;
    public $status;
    public $address;
    public function __construct($id, $date, $totalPrice, $arrayProduct, $status, $address)
    {
        $this->id = $id;
        $this->date = $date;
        $this->totalPrice = $totalPrice;
        $this->arrayProduct = $arrayProduct;
        $this->status = $status;
        $this->address = $address;
    }
}
class ProductOrder
{
    public $idProduct;
    public $pictureProduct;
    public $nameProduct;
    public $quantity;
    public $price;
    public $quantityRemain;
    public function __construct($idProduct, $pictureProduct, $nameProduct, $quantity, $price, $quantityRemain)
    {
        $this->idProduct = $idProduct;
        $this->pictureProduct = $pictureProduct;
        $this->nameProduct = $nameProduct;
        $this->quantity = $quantity;
        $this->price = $price;
        $this->quantityRemain=$quantityRemain;
    }
}
$arrayOrder = array();
if ($userId == 0) // admin muon lay toan bo don hang cua cac user da dat
{
    $query1 = "SELECT id, date, status, address FROM orderr ORDER BY id DESC";
} else // user muon lay cac don hang cua minh da dat 
{
    $query1 = "SELECT id, date, status, address FROM orderr WHERE user_id='$userId' ORDER BY id DESC";
}
$data1 = mysqli_query($connect, $query1);
if ($data1) {
    while ($row1 = mysqli_fetch_assoc($data1)) {
        $orderId = $row1["id"];
        $query2 = "SELECT product_id,picture,name,order_detail.quantity,order_detail.price, product.quantity AS quantityRemain FROM order_detail, product WHERE order_id='$orderId' AND order_detail.product_id=product.id";
        $data2 = mysqli_query($connect, $query2);
        if ($data2) {
            $arrayOrderDetail = array();
            $totalPrice = 0;
            while ($row2 = mysqli_fetch_assoc($data2)) {
                array_push($arrayOrderDetail, new ProductOrder($row2["product_id"], $row2["picture"], $row2["name"], $row2["quantity"], $row2["price"], $row2["quantityRemain"]));
                $totalPrice = $totalPrice + $row2["price"] * $row2["quantity"];
            }
            array_push($arrayOrder, new Order($row1["id"], $row1["date"], $totalPrice, $arrayOrderDetail, $row1["status"], $row1["address"]));
        }
    }
    if (count($arrayOrder) > 0) {
        echo json_encode($arrayOrder);
    }
}
?>
