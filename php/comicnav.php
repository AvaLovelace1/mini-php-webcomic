<?php
include_once("./php/database.php");
/**
 * @var int $first_page
 * @var int $prev_page
 * @var int $next_page
 * @var int $last_page
 * @var int $random_page
 */
?>

<nav class="row justify-content-center gx-2">
    <div class="col-auto">
        <a href="index.php?comic=<?= $first_page ?>" class="btn btn-light" title="First page" role="button">⟨⟨</a>
    </div>
    <div class="col-auto">
        <a href="index.php?comic=<?= $prev_page ?>" class="btn btn-light" title="Previous page" role="button">⟨</a>
    </div>
    <div class="col-auto">
        <a href="index.php?comic=<?= $random_page ?>" class="btn btn-light" title="Random page" role="button">∞</a>
    </div>
    <div class="col-auto">
        <a href="index.php?comic=<?= $next_page ?>" class="btn btn-light" title="Next page" role="button">⟩</a>
    </div>
    <div class="col-auto">
        <a href="index.php?comic=<?= $last_page ?>" class="btn btn-light" title="Last page" role="button">⟩⟩</a>
    </div>
</nav>
