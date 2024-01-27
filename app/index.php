<?php
require "./lib/login.php";
?>

<?php
include "./templates/head.php";
?>

<body class="d-flex align-items-center py-4 bg-body-tertiary">
    <?php include "./templates/colormodes.php"; ?>

    <main class="form-signin w-100 m-auto">
        <form id="login" action="" method="post">
            <img class=" mx-5 mb-4" src="./assets/imgs/logo.jpg" height="180" width="180">
            <h1 class="h3 mb-3 fw-normal align-items-center">Silahkan Login</h1>

            <div class="form-floating">
                <input type="text" class="form-control" id="floatingInput" name="username"
                    placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" name="password"
                    placeholder="Password">
                <label for="floatingPassword">Password</label>
            </div>

            <div class="form-check text-start my-3">
                <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    Ingat Saya
                </label>
            </div>
            <button class="btn btn-primary w-100 py-2" type="submit" name="login">
                <i class="bi-door-open"></i>Masuk
            </button>
            <p class="mt-5 mb-3 text-body-secondary">&copy; Essago 2024</p>
        </form>
    </main>
    <?php include "./templates/logincss.php"; ?>
    <?php include "./templates/js.php"; ?>

</body>

</html>