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
    $query2 = "INSERT INTO cart_detail VALUES (null,'$cartId','$productId','$quantity')"; // 1 chua dat hang, 2 la da dat hang
    $data2 = mysqli_query($connect, $query2);
    if ($data2) {
        echo "Insert successfully !";
    } else {
        echo "Failed !";
    }
}
?>
