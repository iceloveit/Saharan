</div><!-- /wrapper -->
<footer>
  <div class="container">
    <div class="row">
    <div class="top-footer">
		<?php if(isset($block3)){ echo $block3; }?>
	</div>
	</div>
	</div>
	<div class="container">
    <div class="row">
    <div class="middle-footer">
	<div class="col-sm-6 col-md-3 contact-info">
		<?php if ($logo) { ?>
			  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
		<?php } ?>
		<!-- <h3 class="footer-title"><span><?php echo $text_contact?></span></h3> -->
		<ul class="list-unstyled">
			<li><i class="fa fa-map-marker"></i><strong><?php echo $address; ?></strong></li>
			<li><i class="fa fa-mobile"></i><strong><?php echo $telephone; ?><br /><?php echo $fax; ?></strong></li>
			<li><i class="fa fa-envelope-o"></i><strong><?php echo $email; ?></strong></li>
		</ul>
	</div>
      <?php if ($informations) { ?>
		<div class="col-sm-6 col-md-3">
			<h3 class="footer-title"><span><?php echo $text_information; ?></span></h3>
			<ul class="list-unstyled">
			  <?php foreach ($informations as $information) { ?>
			  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
			  <?php } ?>
			</ul>
		</div>
	<?php } ?>
	<div class="col-sm-6 col-md-3">
		<h3 class="footer-title"><span><?php echo $text_service; ?></span></h3>
		<ul class="list-unstyled">
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		</ul>
	</div>
	<div class="col-sm-6 col-md-3">
		<h3 class="footer-title"><span><?php echo $text_account; ?></span></h3>
		<ul class="list-unstyled">
		  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		</ul>
	</div>
	</div>
	<?php if(isset($block4)){ echo $block4; }?>
	
    </div>
  </div>
  <div id="back-top"><i class="fa fa-angle-up"></i></div>
  <div class="text-powered">
  <div class="container">
    <div class="row">
	<div class="col-xs-12">
		<p><?php echo $powered; ?></p>
    </div>
    </div>
    </div>
    </div>
  
<script type="text/javascript">
$(document).ready(function(){
	// hide #back-top first
	$("#back-top").hide();
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 300) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		$('#back-top').click(function () {
			$('body,html').animate({scrollTop: 0}, 800);
			return false;
		});
	});
});
</script>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>