<?php

/** @var yii\web\View $this */

$this->title = 'Мой сайт';
$this->registerJsFile(
    '@web/js/index.js',
    ['depends' => [\yii\web\JqueryAsset::class]]
);
$this->registerCssFile("@web/css/style.css", [
    'depends' => [\yii\bootstrap5\BootstrapAsset::class],
]);
?>
<div class="site-index">
    <div id="requests">
        <h1>Количестро решенных заявок: <span><?= $count; ?></span></h1>
    </div>
    <?php
    foreach ($requests as $model) { ?>
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <div class="thumbnail">
                    <img src="/basic/<?= $model->photo_after ?>" alt="Фото" data-img-to="/basic/<?= $model->photo_to ?>"
                         data-img-after="/basic/<?= $model->photo_after ?>">
                </div>
                <div class="caption">
                    <h1>Название: <?= $model->name ?></h1>
                    <p>Дата создания: <?= $model->datetime ?></p>
                    <p>Название категории: <?= $model->category->name ?></p>
                </div>
            </div>
        </div>
    <?php } ?>
</div>
