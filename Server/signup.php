<?php
include "connect.php";
$email = $_POST["email"];
$password = $_POST["password"];
$name = $_POST["name"];
$phoneNumber = $_POST["phoneNumber"];
$type = $_POST["type"]; // type = 1 la nguoi ban, type = 2 la khach hang
$firebaseUId = $_POST["firebaseUId"];
$password ="on firebase"; // mac dinh password de la on firebase
$query1 = "INSERT INTO user VALUES (null,'$email','$password','$name','$phoneNumber','$type','$firebaseUId',null)";
$query2 = "SELECT id FROM user WHERE email ='$email'"; // lay ra id cua user moi duoc them vao
$data1 = mysqli_query($connect, $query1);
if ($data1) {
    echo "Sign up successfully !";
    if ($type == 2) { // chi tao gio hang cho user khach hang
        $data2 = mysqli_query($connect, $query2);
        if ($data2) {
            $row = mysqli_fetch_assoc($data2);
            $userId = $row["id"];
            $query3 = "INSERT INTO cart VALUES (null,'$userId')"; // dong thoi them du lieu vao bang cart voi gia tri userId cua user moi signup thanh cong
            $data3 = mysqli_query($connect, $query3);
        }
    }
} else {
    echo "Failed !";
}
?>