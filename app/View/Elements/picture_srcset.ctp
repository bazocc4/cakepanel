<picture>
    <source srcset="<?php echo $this->Get->image_link(!empty($desktop_image)?['id'=>$desktop_image]:['id'=>$main_image, 'responsive' => 1])['display']; ?>" media="(min-width: 1200px) and (max-width: 1300px)">
    <source srcset="<?php echo $this->Get->image_link(!empty($tablet_image)?['id'=>$tablet_image]:['id'=>$main_image, 'responsive' => 2])['display']; ?>" media="(min-width: 768px) and (max-width: 1199px)">
    <source srcset="<?php echo $this->Get->image_link(!empty($mobile_image)?['id'=>$mobile_image]:['id'=>$main_image, 'responsive' => 3])['display']; ?>" media="(max-width: 767px)">
    <img src="<?php echo $this->Get->image_link(array('id'=>$main_image))['display']; ?>" alt="<?= $title_image; ?>">
</picture>
