<?php
include "connect.php";
$orderId = $_POST['orderId'];
$status = $_POST['status'];
$query = "UPDATE orderr SET status = '$status' WHERE id ='$orderId'";
$data = mysqli_query($connect, $query);
if ($data) {
    echo "Update successfully !";
} else {
    echo "Failed !";
}
?>
