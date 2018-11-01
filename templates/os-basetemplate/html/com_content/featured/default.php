<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.beez3
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
$hot_categories = Util::getHotCategories();
?>
<!--content-->
<div class="kic-top ">
    <div class="container ">
        <div class="kic ">
            <h3>Sản phẩm bán chạy</h3>
        </div>
        <?php
        foreach ($hot_categories as $obj) {
            $file_name = Util::getFileOriginal($obj['product_info']['filename'], 1);
            $link = JRoute::_('index.php?option=com_products&view=products&id_category=' . $obj['id']);
            ?>
            <div class="col-md-4 kic-top1">
                <a title="<?php echo $obj['title'];?>" href="<?php echo $link;?>">
                    <img src="<?php echo $file_name; ?>" class="img-responsive" alt="<?php echo $obj['title'];?>">
                </a>
                <h6><?php echo $obj['title'];?></h6>
                <p>Sản phẩm chỉ có tại nhaphanphoiphusi.com</p>
            </div>
        <?php } ?>
    </div>
</div>
<!--content-->
<div class="product">
    <div class="container">
        <div class="spec ">
            <h3>Sản phẩm</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class=" con-w3l">
            <?php
            $all_products = Util::getAllProducts(20, null, true);
            if (!empty($all_products)) {
                foreach ($all_products as $index => $obj_product) {
                    $file_name = Util::getFileOriginal($obj_product['filename'], 1);
                    ?>
                    <div class="col-md-3 pro-1">
                        <div class="col-m">
                            <a title="<?php echo $obj_product['product_title'];?>" href="#" data-toggle="modal" data-target="#myModal<?php echo $index;?>" class="offer-img">
                                <img src="<?php echo $file_name;?>" class="img-responsive" alt="<?php echo $obj_product['product_title'];?>">
                            </a>
                            <div class="mid-1">
                                <div class="women">
                                    <h6><?php echo Util::formatProductTitle($obj_product['product_title']); ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php }
            }
            ?>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<?php
if (!empty($all_products)) {
    foreach ($all_products as $index => $obj_product) {
        $file_name = Util::getFileOriginal($obj_product['filename'], 1);
        ?>
        <!-- product -->
        <div class="modal fade" id="myModal<?php echo $index;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body modal-spa">
                        <div class="col-md-5 span-2">
                            <div class="item">
                                <img src="<?php echo $file_name;?>" class="img-responsive" alt="<?php echo $obj_product['product_title'];?>">
                            </div>
                        </div>
                        <div class="col-md-7 span-1 ">
                            <h3><?php echo Util::formatProductTitle($obj_product['product_title']); ?></h3>
                            <p class="in-para"> Sản phẩm chỉ có duy nhất tại nhaphanphoiphusi.com</p>

                            <h4 class="quick">Chi tiết sản phẩm:</h4>
                            <p class="quick_desc"> Vui lòng gọi điện thoại:</p>
                            <div><img src="images/phone.png" /> <span class="mobile_ic">0903 825 315</span></div>
                            <p class="quick_desc"> Hoặc gửi email: </p>
                            <div><img src="images/email.png" /> <a href="mailto:phusi68@yahoo.com.vn" class="email_ic">phusi68@yahoo.com.vn</a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <?php }}?>

