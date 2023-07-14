<?php
include "connect.php";
$name = $_POST['name'];
$price = $_POST['price'];
$picture = $_POST['picture'];
$description = $_POST['description'];
$type = $_POST['type'];
$quantity = $_POST['quantity'];
$query1 = "SELECT * FROM product WHERE name = '$name'";
$data1 = mysqli_query($connect, $query1);
$numRow = mysqli_num_rows($data1);
if ($numRow > 0) { // neu san pham muon them trung ten voi san pham da co
    echo "Name product already exist !";
} else {
    $query2 = "INSERT INTO product VALUES (null,'$name','$price','$picture','$description','$type','$quantity')";
    $data2 = mysqli_query($connect, $query2);
    if ($data2) {
        echo "Insert successfully !";
    } else {
        echo "Failed !";
    }
}
?>