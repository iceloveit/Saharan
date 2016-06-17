<?php
	$count = 0;
	$rows = $slide['rows'];
	if(!$rows) { $rows = 1; }
?>
<div class="testimonial-module">
<div class="container">
	<div class="testimonial-container">
		<div class="module-title6">
			<h2><?php echo $heading_title; ?></h2>
		</div>
			<div class="block-content">
				<div id="slides">
					<?php foreach($testimonials as $testimonial) { ?>
						<?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; } $count++; ?>
						<div class="testimonial-content">
							<div class="testimonial-images pull-left">
								<img src="<?php echo $testimonial['image'];?>" alt="<?php echo $testimonial['customer_name'];?>">
							</div>
							<div class="testimonial-box media-body">
								<a href="<?php echo $more; ?>"><?php echo substr($testimonial['content'],0,150)."..."; ?></a>
								<span class="testimonial-author"><?php echo $testimonial['customer_name']; ?></span>
							</div>
						</div><!--testimonial-content-->
						<?php if($count % $rows == 0 || $count == count($testimonials)): ?>
						</div>
						<?php endif; ?>
					<?php  } ?>
				</div>
			</div><!--block-content-->
	</div><!--testimonial-container-->
</div>
</div>
<script type="text/javascript">
    $("#slides").owlCarousel({
		autoPlay : <?php if($slide['auto']) { echo 'true' ;} else { echo 'false'; } ?>,
		items : <?php echo $slide['items'] ?>,
		itemsDesktop : [1199,2],
		itemsDesktopSmall : [980,2],
		itemsTablet: [768,1],
		itemsMobile : [479,1],
		slideSpeed : <?php echo $slide['speed']; ?>,
		paginationSpeed : <?php echo $slide['speed']; ?>,
		rewindSpeed : <?php echo $slide['speed']; ?>,
		navigation : <?php if($slide['navigation']) { echo 'true' ;} else { echo 'false'; } ?>,
		pagination : <?php if($slide['pagination']) { echo 'true' ;} else { echo 'false'; } ?>,
		navigationText : ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
    });
</script>