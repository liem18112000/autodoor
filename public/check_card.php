<?php
$servername = "localhost";
$dbname = "autodoor_official";
$username = "root";
$password = "";
date_default_timezone_set("Asia/Bangkok");
if ($_SERVER["REQUEST_METHOD"] == "GET") {
$card_UID = test_input($_GET["card_UID"]);
//echo "card_UID: ".$card_UID;
}
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$fullname = "NONAME";
$sql = "SELECT fullname, cards.status FROM cards join employees on employees.id = cards.employee_id WHERE cards.id='$card_UID'";
if ($result = $conn->query($sql)) {
while ($row = $result->fetch_assoc()) {
$fullname = $row["fullname"]; //trả về tên
$status = $row["status"];
} //End while
if ($fullname=="NONAME"){
    //Write lên 1 bảng UID_tam --> dùng để gán cho các employees
}
echo $fullname;
}
else {
echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
function test_input($data) {
$data = trim($data);
$data = stripslashes($data);
$data = htmlspecialchars($data);
return $data;
}
?>