<?php
include_once("./php/databasearchive.php");
/**
 * @var array $episodes_list
 */
?>

<main class="my-4 my-sm-5 container">
    <div class="row justify-content-center">
        <div class="col col-md-11 col-lg-8 col-xl-7 col-xxl-6">
            <h1>Archive</h1>
            <p>Hover over a comic to see the date it was posted.</p>
            <?php foreach ($episodes_list as $episode): ?>
                <div class="row mb-3 gx-3">
                    <div class="col-3">
                        <a href="index.php?comic=<?= get_id($episode[0]) ?>">
                            <img class="img-fluid img-thumbnail"
                                 src="<?= get_thumbnail_filepath($episode[0]) ?>"
                                 alt="<?= get_title($episode[0]) ?>" title="<?= get_title($episode[0]) ?>"/>
                        </a>
                    </div>
                    <div class="col">
                        <h2>
                            <a href="index.php?comic=<?= get_id($episode[0]) ?>"
                               title="<?= get_publish_date($episode[0]) ?>">
                                <?= get_title($episode[0]) ?>
                            </a>
                        </h2>
                        <?php if (count($episode) > 1): ?>
                            <p>
                                <?php foreach ($episode as $comic): ?>
                                    <a href="index.php?comic=<?= get_id($comic) ?>"
                                       title="<?= get_publish_date($comic) ?>">
                                        <?= get_page_number($comic) ?></a>
                                <?php endforeach; ?>
                            </p>
                        <?php endif; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</main>
