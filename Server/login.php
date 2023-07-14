<?php
include "connect.php";
$email = $_POST["email"];
$password = $_POST["password"];
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
$query = "SELECT * FROM user WHERE email ='$email'"; // chi can email la duoc vi email la duy nhat, bo password de tranh bug khi reset password thi pass firebase da doi nhung pass MySQL khong doi theo => dan den khong dang nhap duoc
$arrayUser = array();
$data = mysqli_query($connect, $query);
if ($data) {
    while ($row = mysqli_fetch_assoc($data)) {
        array_push($arrayUser, new User($row["id"], $row["email"], $row["password"], $row["name"], $row["phone_number"], $row["type"], $row["firebaseUId"],$row["token"]));
    }
    if (count($arrayUser) > 0) {
        echo json_encode($arrayUser);
    } else {
        echo "Failed !";
    }
}
?>
