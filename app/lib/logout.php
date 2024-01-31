<?php
session_start();
error_reporting(0);

if(session_destroy()) {
    header("location: ../index.php");
    exit;
}
