<div class="category-module">
	<div class="module-title module-title6"><h2><?php echo $heading_title; ?></h2></div>
	<div class="box-content">
		<ul class="list-group">
		  <?php foreach ($categories as $category) { ?>
		  <li <?php if ($category['children']) { ?> class="hadchild" <?php } ?>>
		  <a href="<?php echo $category['href']; ?>" class="list-group-item <?php if ($category['category_id'] == $category_id){ ?> active <?php } ?>"><span><?php echo $category['name']; ?></span></a>
		  <?php if ($category['children']) { ?>
		  <i class="button-view fa <?php if ($category['category_id'] == $category_id){ ?> fa-minus <?php } else { ?> fa-plus <?php } ?> "></i>
		  <ul <?php if ($category['category_id'] == $category_id){ ?>  style="display: block;"  <?php } else { ?> style="display: none;" <?php } ?>>
		  <?php foreach ($category['children'] as $child) { ?>
			<?php if ($child['category_id'] == $child_id) { ?>
				<li><a href="<?php echo $child['href']; ?>" class="list-group-item active"><span>&nbsp;&nbsp;&nbsp; <?php echo $child['name']; ?></span></a></li>
			<?php } else { ?>
				<li><a href="<?php echo $child['href']; ?>" class="list-group-item"><span>&nbsp;&nbsp;&nbsp; <?php echo $child['name']; ?></span></a></li>
			<?php } ?>
		  <?php } ?>
		  </ul>
		  <?php } ?>
		  </li>
		  <?php } ?>
		</ul>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$('.button-view').click(function(){
	if ($(this).hasClass('fa-minus')) {varche = true} else {varche = false};
	if(varche == false){
		$('.hadchild ul').slideUp();
		$('.hadchild').removeClass('active');
		$('.hadchild .button-view').removeClass("fa-minus");
		$('.hadchild .button-view').addClass("fa-plus");
		$(this).parent().addClass("active");
		$(this).addClass("fa-minus");
		$(this).removeClass("fa-plus");
		$(this).next().slideDown();
		varche = true;
	} else{	
		$(this).removeClass("fa-minus");
		$(this).addClass("fa-plus");
		$(this).next().slideUp();
		varche = false;
	}
	});
});
</script>

