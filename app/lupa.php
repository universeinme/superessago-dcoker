<?php
require "./lib/login.php";
include "./templates/headindex.php";
?>

<body class="bg-body-tertiary bg-login-image">
    <?php include "./templates/colormodes.php"; ?>
    <div class="container">
        <div class="row vh-100 justify-content-center align-items-center">
            <div class="col-md-6">
                <img src="../assets/imgs/logo.png" alt="Image" class="img-fluid">
                <p class="mt-3 mb-3 text-body-secondary">&copy; Essago 2024</p>
            </div>
            <div class="col-md-6 contents">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="mb-4">
                            <h3>Reset Password</h3>
                        </div>
                        <form action="" method="post">
                            <div class="form-group first">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" name="username">
                            </div>
                            <div class="form-group last py-4">
                                <label for="password">Password Baru</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <input type="submit" value="Reset Password"
                                class="btn btn-block btn-primary w-100 mt-2 mb-3" name="reset">
                            <div class="d-flex justify-content-between mb-3">
                                <div class="p-2 bd-highlight">
                                    <a href="./index.php">Login</a>
                                </div>
                                <div class="p-2 bd-highlight">
                                    <a href="">Buat Akun Baru!</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include "./templates/logincss.php"; ?>
    <?php include "./templates/js.php"; ?>
</body>

</html>