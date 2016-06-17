<div class="bestseller-module">
<div class="container">
<div class="module-title6">
	<h2><?php echo $heading_title; ?></h2>
</div>
<div class="row">
<div class="bestseller-products-slider">
    <?php
        $count = 0;
        $rows = $config_slide['f_rows'];
        if(!$rows) { $rows=1; }
    ?>
    <?php if($products): ?>
        <?php foreach ($products as $product) { ?>
        <?php if($count++ % $rows == 0 ) { echo '<div class="row_items">'; } ?>
        <div class="product-layout product-grid">
							  <div class="product-thumb layout8">
								  <div class="image">
								  <?php if($config_slide['f_show_label']): ?>
								  <?php if($product['is_new'] && !$product['special']){ ?>
								  <div class="label-product">
									  <span><?php echo $text_new; ?></span>
								  </div>
								  <?php } if(($product['special'] && $product['is_new'])||($product['special'] && !$product['is_new'])) { ?>
								  <div class="label-product l-sale">
									  <span><?php echo round(($product['special_num']-$product['price_num'])/$product['price_num']*100)."%"; ?></span>
								  </div>
								  <?php }?>
                                  <?php endif;?>
								  <a href="<?php echo $product['href']; ?>">
								  <?php if ($product['thumb']) { ?>
									<img  src="image/catalog/loading.gif" data-original="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazy" />
									<?php if($product['rotator_image']){ ?><img class="img-r lazy"  src="image/catalog/loading.gif" data-original="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" /><?php } ?>
								  <?php } else { ?>
									<img  src="image/cache/no_image-100x100.png" alt="<?php echo $product['name']; ?>" />
								  <?php } ?>
								  </a>
								  <div class="actions-link text-qv">
											
										</div>
								</div>
	
								<div class="product-inner">
								  <div class="product-caption">
								  <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
								  <?php if($config_slide['f_show_des']) { ?>
									<p class="product-des"><?php echo $product['description']; ?></p>
									<?php } ?>
									<?php if (isset($product['rating'])) { ?>
									  <div class="ratings">
										  <div class="rating-box">
											  <?php for ($i = 0; $i <= 5; $i++) { ?>
												  <?php if ($product['rating'] == $i) {
													  $class_r= "rating".$i;
													  echo '<div class="'.$class_r.'">rating</div>';
												  } 
											  }  ?>
										  </div>
									  </div>
								  <?php } ?>
								  <?php if($config_slide['f_show_price']) { ?>
								  <?php if ($product['price']) { ?>
									<p class="price">
									  <?php if (!$product['special']) { ?>
									  <?php echo $product['price']; ?>
									  <?php } else { ?>
									  <span class="price-new"><?php echo $product['special']; ?></span>
									  <span class="price-old"><?php echo $product['price']; ?></span>
									  <?php } ?>
									</p>
									<?php } ?>
									<?php } ?>
								  
								  <div class="product-intro">
											<?php if($config_slide['f_show_addtocart']) { ?>
												<a data-toggle="tooltip" title="<?php echo $button_cart; ?>"  onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i></a>
											<?php } ?>
											<a class="btn-compare" data-toggle="tooltip" title="<?php echo $button_compare; ?>"  onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i><span></a>
											<a class="btn-compare" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"  onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></a>
										<div class="actions-link2">
											<?php if($config_slide['f_show_addtocart']) { ?>
												<a data-toggle="tooltip" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-basket"></i><span><?php echo $button_cart; ?></span></a>
											<?php } ?>
											<a data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i><span><?php echo $button_wishlist; ?></span></a>
											<a data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-signal"></i><span><?php echo $button_compare; ?></span></a>
										</div>
									</div>
								  </div>
								  
								</div>
							  </div>
							</div>
        <?php if($count % $rows == 0 || $count == count($products)) { echo '</div>'; } ?>
        <?php } ?>
    <?php else: ?>
        <p><?php echo $text_empty; ?></p>
    <?php endif; ?>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".bestseller-products-slider").owlCarousel({
        autoPlay: <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false'; } ?>,
        items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3; } ?>,
        slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed']; } else { echo 200;} ?>,
        navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false'; } ?>,
        paginationNumbers : true,
        pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
        stopOnHover : false,
		itemsDesktop : [1199,1],
            itemsDesktopSmall : [991,1],
            itemsTablet: [700,1],
            itemsMobile : [480,1],
		navigationText : ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
    });

});
</script>
</div>
</div>
</div>