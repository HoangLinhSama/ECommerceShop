<?php
include "connect.php";
$userId = $_POST['userId'];
$token = $_POST['token'];
$query = "UPDATE user SET token = '$token' WHERE id ='$userId'";
$data = mysqli_query($connect, $query);
if ($data) {
    echo "Update successfully !";
} else {
    echo "Failed !";
}
?>
