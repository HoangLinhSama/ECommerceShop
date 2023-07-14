<?php
include "connect.php";
$productId = $_POST["productId"];
$nameProduct = $_POST["nameProduct"];
$price = $_POST["price"];
$quantity = $_POST["quantity"];
$description = $_POST["description"];
$type = $_POST["type"];
$picture = $_POST["picture"];
$query = "UPDATE product SET name ='$nameProduct', price = '$price', picture='$picture', description='$description',type='$type', quantity = '$quantity'  WHERE id ='$productId'";
$data = mysqli_query($connect, $query);
if ($data) {
    echo "Update successfully !";
} else {
    echo "Failed !";
}
?>
