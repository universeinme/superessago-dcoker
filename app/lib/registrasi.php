<?php
require "./config/koneksi.php";

if (isset($_POST['daftar'])) {
    $nama = $_POST['nama'];
    $username = $_POST['username'];
    $pass = $_POST['password'];

    if ($pass == $pass) {
        $kueri = "SELECT * FROM pengguna WHERE username='$username'";
        $hasil = mysqli_query($link, $kueri);
        if (!$hasil->num_rows > 0) {
            $kueri = "INSERT INTO pengguna (idpengguna, username, nama, pwd)
                    VALUES (NULL,'$username', '$nama', '$pass')";
            $hasil = mysqli_query($link, $kueri);
            if ($hasil) {
                echo "<script>alert('Selamat, registrasi berhasil!')</script>";
                $nama = "";
                $username = "";
                $_POST['password'] = "";
            } else {
                echo "<script>alert('Woops! Terjadi kesalahan.')</script>";
            }
        } else {
            echo "<script>alert('Woops! Email Sudah Terdaftar.')</script>";
        }

    } else {
        echo "<script>alert('Password Tidak Sesuai')</script>";
    }
}