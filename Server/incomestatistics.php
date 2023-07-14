<?php
include "connect.php";
$currentMonth = date('m');
class Statistical
{
    public $dayOrder;
    public $income;
    public function __construct($dayOrder, $income)
    {
        $this->dayOrder = $dayOrder;
        $this->income = $income;
    }
}
$query = "SELECT DAY(orderr.date) AS dayOrder, SUM(product.price * order_detail.quantity) AS income
FROM order_detail
JOIN orderr ON order_detail.order_id = orderr.id
JOIN product ON order_detail.product_id = product.id
WHERE MONTH(orderr.date) = '$currentMonth' AND status = 3
GROUP BY DAY(orderr.date)";
$arrayStatistical = array();
$data = mysqli_query($connect, $query);
if ($data) {
    while ($row = mysqli_fetch_assoc($data)) {
        array_push($arrayStatistical, new Statistical($row["dayOrder"], $row["income"]));
    }
    if (count($arrayStatistical) > 0) {
        echo json_encode($arrayStatistical);
    } else {
        echo "Failed !";
    }
}
?>
