<?php
include "connect.php";
$orderId = $_POST["orderId"];
class User
{
    public $id;
    public $email;
    public $password;
    public $name;
    public $phoneNumber;
    public $type;
    public $firebaseUId;
    public $token;
    public function __construct($id, $email, $password, $name, $phoneNumber, $type, $firebaseUId, $token)
    {
        $this->id = $id;
        $this->email = $email;
        $this->password = $password;
        $this->name = $name;
        $this->phoneNumber = $phoneNumber;
        $this->type = $type;
        $this->firebaseUId = $firebaseUId;
        $this->token = $token;
    }
}
$arrayUser = array();
$query1 = "SELECT user_id FROM orderr WHERE id = '$orderId'";
$data1 = mysqli_query($connect, $query1);
if ($data1) {
    $row1 = mysqli_fetch_assoc($data1);
    $userId = $row1["user_id"];
    $query2 = "SELECT * FROM user WHERE id = '$userId'";
    $data2 = mysqli_query($connect, $query2);
    if ($data2) {
        while ($row2 = mysqli_fetch_assoc($data2)) {
            array_push($arrayUser, new User($row2["id"], $row2["email"], $row2["password"], $row2["name"], $row2["phone_number"], $row2["type"], $row2["firebaseUId"], $row2["token"]));
        }
        if (count($arrayUser) > 0) {
            echo json_encode($arrayUser);
        } else {
            echo "Failed !";
        }
    }
} else {
    echo "Failed !";
}?>
