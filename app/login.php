<?php
require "koneksi.php";

if (isset($_POST['login'])) {
    $email = $_POST['username'];
    $pwd = $_POST['password'];

    $kueri = "SELECT * FROM pengguna WHERE username='$email' AND pwd='$pwd'";
    $hasil = mysqli_query($link, $kueri);

    if ($hasil->num_rows > 0) {
        $kolom = mysqli_fetch_assoc($hasil);
        session_start();
        $_SESSION['nama'] = $kolom['nama'];
        header("Location: navigasi.php");
    } else {
        echo "<script>alert('Email atau password Anda salah. Silahkan coba lagi!')</script>";
    }
}
