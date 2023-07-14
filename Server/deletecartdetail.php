<?php
include"connect.php";
$userId = $_POST['userId'];
$productId = $_POST['productId'];
$query1 = "SELECT id FROM cart WHERE user_id='$userId'";
$data1 = mysqli_query($connect, $query1);
if ($data1) {
    $row = mysqli_fetch_assoc($data1);
    $cardId = $row["id"];
    $query2 = "DELETE FROM cart_detail WHERE cart_id='$cardId' AND product_id='$productId'";
    $data2 = mysqli_query($connect, $query2);
    if ($data2) {
        echo "Delete successfully !";
    } else {
        echo "Failed !";
    }
}
?>
