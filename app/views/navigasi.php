<?php
require "../lib/sesi.php";
?>
<!DOCTYPE html>
<html lang="en">

<?php
include "../templates/head.php";
?>

<body class="bg-body-tertiary">
    <?php include "../templates/colormodes.php"; ?>
    <?php include "./navbar.php"; ?>
    <div class="container-fluid">
        <div class="row">
            <div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
                <div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu"
                    aria-labelledby="sidebarMenuLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="sidebarMenuLabel">Super Essago</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                            data-bs-target="#sidebarMenu" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link d-flex align-items-center gap-2 active" aria-current="page" href="#">
                                    <i class="bi-house"></i>
                                    Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link d-flex align-items-center gap-2" href="#">
                                    <i class="bi-book-half"></i>
                                    Buku Induk
                                </a>
                            </li>
                        </ul>

                        <hr class="my-3">

                        <ul class="nav flex-column mb-auto">
                            <li class="nav-item">
                                <a class="nav-link d-flex align-items-center gap-2" href="#">
                                    <i class="bi-gear"></i>
                                    Pengaturan
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link d-flex align-items-center gap-2" href="../lib/logout.php">
                                    <i class="bi-door-closed"></i>
                                    <?php echo "<strong>". $_SESSION['nama']."</strong>"; ?> Keluar
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include "../templates/js.php"; ?>
    <?php include "../templates/dashboardcss.php"; ?>
    <?php include "../templates/dashboardjs.php"; ?>
</body>

</html>