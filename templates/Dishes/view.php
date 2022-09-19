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
        <span> Tỉnh trạng: </span>
        <?php
            if($dish->is_open==1)
                echo '<span class="dish-status-open">Đang mở cửa </span>
                        <br>
                        <button class="glow-on-hover" type="button">Đặt mua ngay!</button>' ;
            else
                echo '<span class="dish-status-close">Chưa mở cửa </span>
                        <br>
                        <button class="glow-on-hover" type="button" disabled>Đặt mua ngay!</button>' ;
        ?>
    </div>
</div>

<div class="review-point">
    <div>
        <h3>Phục vụ</h3>
        <?php
            if($dish->service_point >= 6.0)
                echo '<div class="point-green"><p>'.$dish->service_point.'</p></div>';
            else
                echo '<div class="point-red"><p>'.$dish->service_point.'</p></div>';
        ?>
    </div>
    <div>
        <h3>Chất lượng</h3>
        <?php
            if($dish->service_point >= 6.0)
                echo '<div class="point-green"><p>'.$dish->quality_point.'</p></div>';
            else
                echo '<div class="point-red"><p>'.$dish->quality_point.'</p></div>';
        ?>
    </div>
    <div>
        <h3>Giá cả</h3>
        <?php
            if($dish->service_point >= 6.0)
                echo '<div class="point-green"><p>'.$dish->price_point.'</p></div>';
            else
                echo '<div class="point-red"><p>'.$dish->price_point.'</p></div>';
        ?>
    </div>
</div>

<h5 class="source">Nguồn hình ảnh và thông tin: Foody.vn</h5>
