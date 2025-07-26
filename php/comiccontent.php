<?php
include_once("./php/databasecomic.php");
/**
 * @var int $curr_comic
 * @var int $episode_first_page
 */
?>

<main class="my-4 my-sm-5 container">
    <div class="row justify-content-center">
        <div class="col col-md-11 col-lg-8 col-xl-7 col-xxl-6">
            <?php include("php/comicnav.php"); ?>
            <img class="img-fluid" src="<?= get_filepath($curr_comic) ?>"
                 alt="<?= get_alt($curr_comic) ?>" title="<?= get_hover($curr_comic) ?>"/>
            <?php include("php/comicnav.php"); ?>
            <h1 class="mt-4 mt-sm-5">
                <a href="index.php?comic=<?= $episode_first_page ?>"><?= get_title($curr_comic) ?></a> •
                Page <?= get_page_number($curr_comic) ?>
            </h1>
            <p>
                <b class="fw-bolder">Published:</b> <?= get_publish_date($curr_comic) ?><br/>
                <b class="fw-bolder">Featuring:</b> <?= get_featured_characters($curr_comic) ?><br/>
            </p>
            <?= get_transcript($curr_comic) ?>
        </div>
    </div>
</main>
