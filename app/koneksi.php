<?php

$host = "mariadb";
$user = "zxcv";
$pass = "zxcv1234";
$db = "kepegawaian";
$link;
$link = mysqli_connect($host, $user, $pass, $db);

// checking
if (!$link) {
    die("Error: Connection Error." . mysqli_connect_error());
}
