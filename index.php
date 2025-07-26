<?php
include_once("./php/databasecomic.php");
/**
 * @var int $curr_comic
 */
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= get_title($curr_comic) ?> • Mini Webcomic</title>
    <?php include_once("php/head.php") ?>
</head>

<body class="d-flex flex-column min-vh-100">

<?php include_once("php/header.php") ?>
<?php include_once("php/comiccontent.php") ?>
<?php include_once("php/footer.php") ?>
<?php include_once("php/tail.php") ?>

</body>
</html>
