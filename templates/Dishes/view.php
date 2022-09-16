<?php
    /* @var $dish */
    $this->Html->css('dish',['block'=>true]);
?>
<div class="dish-info">
    <img src="<?=$dish->image?>" alt="dish image">
    <div>
        <h1><?= $dish->name ?></h1>
        <p>Mã món ăn: <?=$dish->id?></p>
        <h3>Giá: <?= number_format($dish->price)?> đ</h3>
        <p>Địa chỉ: <?=$dish->address?></p>
        <p  </p>>Tỉnh trạng:
        <span class="dish-status">
            <?php
            if($dish->is_open==1)
                echo "Đang mở cửa" ;
            else
                echo "Chưa mở cửa";   ?>
        </span>

    </div>
</div>
