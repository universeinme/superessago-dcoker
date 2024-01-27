<?php

session_start();
if (!isset($_SESSION['nama'])) {
    header("Location: ../views/navigasi.php");
    exit;
}