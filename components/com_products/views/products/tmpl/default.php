<?php
jimport('joomla.application.component.helper');
defined('_JEXEC') or die;
$id_category = JRequest::getVar('id_category');
$list_product = Util::getProductsFromCategory($id_category, 20);
$category_info = Util::getCategoryInfo($id_category);
?>
<?php
if (!empty($category_info)) {
?>
    <!--banner-->
    <div class="banner-top">
        <div class="container">
            <h3><?php echo $category_info['title'];?></h3>
            <h4><a href="<?php echo JUri::base();?>">Trang chủ</a><label>/</label><?php echo $category_info['title'];?></h4>
            <div class="clearfix"></div>
        </div>
    </div>

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
                $all_products = Util::getAllProducts(30, $category_info['id']);
                if (!empty($all_products)) {
                    foreach ($all_products as $index => $obj_product) {
                        $file_name = Util::getFileOriginal($obj_product['filename'], 1);
                        ?>
                        <div class="col-md-3 pro-1">
                            <div class="col-m">
                                <a href="#" data-toggle="modal" data-target="#myModal<?php echo $index;?>" class="offer-img">
                                    <img src="<?php echo $file_name;?>" class="img-responsive" alt="">
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
                                    <img src="<?php echo $file_name;?>" class="img-responsive" alt="">
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
<?php }?>