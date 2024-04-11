<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Заявки';
$this->params['breadcrumbs'][] = $this->title;
$this->registerCssFile("@web/css/style.css", [
    'depends' => [\yii\bootstrap5\BootstrapAsset::class],
]);
?>
<div class="request-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Создать заявку', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?php
    foreach ($requests as $model) { ?>
        <div class="col-xs-6 col-md-3">
            <div class="thumbnail">
                <img src="/basic/<?= $model->photo_to ?>" alt="<?= $model->name ?>">
            </div>
            <div class="caption">
                <h1>Название: <?= $model->name ?></h1>
                <p>Дата создания: <?= $model->datetime ?></p>
                <?php
                if ($model->status == 0) echo "<p class='btn-info'>Новая</p>";
                if ($model->status == 1) echo "<p class='btn-success'>Решена</p>";
                if ($model->status == 2) echo "<p class='btn-danger'>Отменена</p>";
                ?>
                <p>Название категории: <?= $model->category->name ?></p>
                <p>Описание: <?= $model->description ?></p>
            </div>
        </div>
    <?php } ?>
</div>
