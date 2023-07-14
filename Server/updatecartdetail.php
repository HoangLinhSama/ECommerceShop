<?php
include "connect.php";
$userId = $_POST['userId'];
$productId = $_POST['productId'];
$quantity = $_POST['quantity'];
$query1 = "SELECT id FROM cart WHERE user_id='$userId'";
$data1 = mysqli_query($connect, $query1);
if ($data1) {
    $row = mysqli_fetch_assoc($data1);
    $cartId = $row["id"];
    $query2 = "UPDATE cart_detail SET quantity = '$quantity' WHERE cart_detail.cart_id=$cartId AND cart_detail.product_id='$productId'";
    $data2 = mysqli_query($connect, $query2);
    if ($data2) {
        echo "Update successfully !";
    } else {
        echo "Failed !";
    }
}
?>
