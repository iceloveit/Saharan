<div class="banner-module col-md-8 col-sm-12 owl-style2">
		<div id="banner<?php echo $module; ?>" class="owl-carousel">
		  <?php foreach ($banners as $banner) { ?>
		  <div class="item">
			<?php if ($banner['link']) { ?>
			<a href="<?php echo $banner['link']; ?>"><img  src="image/catalog/loading.gif" data-original="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazy" /></a>
			<?php } else { ?>
			<img  src="image/catalog/loading.gif" data-original="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazy" />
			<?php } ?>
		  </div>
		  <?php } ?>
		</div>
</div>
<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
	items: 4,
	autoPlay: false,
	navigation: true,
	pagination: false,
	transitionStyle: 'fade',
	itemsDesktop : [1199,4],
	itemsDesktopSmall : [991,3],
	itemsTablet: [700,2],
	itemsMobile : [400,1],
	slideSpeed : 1000,
	navigationText : ['<i class="fa fa-caret-left" aria-hidden="true"></i>','<i class="fa fa-caret-right" aria-hidden="true"></i>']
});
--></script>
