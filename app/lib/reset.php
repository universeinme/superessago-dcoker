<?php
require "./config/koneksi.php";
error_reporting(0);

if (isset($_POST['reset'])) {
    $username = $_POST['username'];
    $pass_baru = $_POST['password'];

    if (empty($username)) {
        echo '<script>Harap isi username!</script>';
    } else {
        $q = "SELECT * FROM pengguna WHERE username = '$username'";
        $hasil = mysqli_query($link, $q);
        if ($hasil->num_rows > 0) {
            $kueri = "UPDATE pengguna SET pwd = '$pass_baru' WHERE username = '$username'";
            $hasil = mysqli_query($link, $kueri);
            if ($hasil) {
                echo "<script>alert('Kata sandi telah diperbaharui')</script>";
                header("Location: ../index.php");
            } else {
                echo "<script>alert('Permintaan gagal!')</script>";
            }
        } else {
            echo "<script>alert('Username tidak ditemukan!')</script>";
        }
    }
}