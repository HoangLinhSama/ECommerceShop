<?php
include "connect.php";
$productId = $_POST["productId"];
$quantity = $_POST["quantity"];
$query = "UPDATE product SET quantity = '$quantity' WHERE id ='$productId'";
$data = mysqli_query($connect, $query);
if ($data) {
    echo "Update successfully !";
} else {
    echo "Failed !";
}
?>