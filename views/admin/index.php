<?php

use app\models\Request;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

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
        <?= Html::a('Управление категориями', ['/category'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id',
            //'user_id',
            //'category_id',
            'user.full_name',
            'category.name',
            'name',
            'description:ntext',
            //'photo_to',
            //'status',
            //'photo_after',
            //'datetime',
            [
                'label' => 'Фото до',
                'attribute' => 'photo_to',
                'format' => 'html',
                'value' => function ($data) {
                    return "<img src='/basic/$data->photo_to' alt='Фото'>";
                },
            ],
            'description_denied:ntext',
            [
                'label' => 'Фото после',
                'attribute' => 'photo_after',
                'format' => 'html',
                'value' => function ($data) {
                    return "<img src='/basic/$data->photo_after' alt='Фото'>";
                },
            ],
            [
                'label' => 'Статус',
                'attribute' => 'status',
                'format' => 'html',
                'value' => function ($data) {
                    if ($data->status == 0) return 'Новая' . ' ' . Html::a('Решить', "/basic/request/success?id=$data->id") . ' ' . Html::a('Отменить', "/basic/request/cancel?id=$data->id");
                    if ($data->status == 1) return 'Решена';
                    if ($data->status == 2) return 'Отменена';
                },
                'filter' => ['0' => 'Новая', '1' => 'Решена', '2' => 'Отменена'],
                'filterInputOptions' => ['prompt' => 'Все статусы', 'class' => 'form-control', 'id' => null]
            ],
        ],
    ]); ?>
</div>