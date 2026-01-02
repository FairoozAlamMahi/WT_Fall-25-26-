<?php
include "DB/db.php";

$result = $conn->query("SELECT * FROM cars");

if ($result) {
    echo "Cars table connected successfully!";
} else {
    echo "Error: " . $conn->error;
}
?>
