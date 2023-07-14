<?php
include "connect.php";
$userId = $_POST["userId"];
$address = $_POST["address"];
$listCart = $_POST["listCart"]; // list cac san pham co trong gio hang
$totalMoney = $_POST["totalMoney"];
$zaloPayTransactionId = $_POST["zaloPayTransactionId"];
date_default_timezone_set('Asia/Ho_Chi_Minh');
$currentDate = date('Y-m-d');
$query1 = "INSERT INTO orderr VALUES (null,'$userId','$address','$currentDate','0', $totalMoney,$zaloPayTransactionId)"; // mac dinh status cua don hang khi moi dat se la 0 (Đang xu ly)
$query2 = "SELECT id FROM orderr WHERE user_id = '$userId' ORDER BY id DESC LIMIT 1"; // lay ra id cua don hang moi nhat duoc them vao cua user (phong truong hop nhieu nguoi dung dat hang cung mot luc)
$data1 = mysqli_query($connect, $query1);
if ($data1) {
    $data2 = mysqli_query($connect, $query2);
    if ($data2) {
        $row1 = mysqli_fetch_assoc($data2);
        $orderId = $row1["id"];
        $listCart = json_decode($listCart, true); // decode json ve array associative (nguoc lai cua qua trinh encode tu array associative thanh json thi tra du lieu cho client)
        foreach ($listCart as $key => $value) {
            $query4 = "INSERT INTO order_detail VALUES (null,'$orderId',{$value['idProduct']},{$value['quantity']},ROUND({$value['totalPrice']}/{$value['quantity']}))";
            $data5 = mysqli_query($connect, $query4);
            if ($data5) {
                echo "Insert successfully !";
            } else {
                echo "Failed !";
            }
        }
    }
}
