<?php if(isset($block3)){ echo $block3; }?>
<footer>
  <div class="container">
    <div class="row">		
      <?php if ($informations) { ?>
		<div class="col-sm-6 col-md-3">
			<h3 class="footer-title"><?php echo $text_information; ?></h3>
			<ul class="list-unstyled">
			  <?php foreach ($informations as $information) { ?>
			  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
			  <?php } ?>
			</ul>
		</div>
	<?php } ?>
	<div class="col-xs-12 col-md-3">
		<h3 class="footer-title"><?php echo $text_account; ?></h3>
		<ul class="list-unstyled">
		  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		</ul>
	</div>
	<?php if(isset($block2)){ ?>
		<div class="col-xs-12 col-md-3">
			<?php echo $block2; ?>
		</div>
	<?php } ?>
	<div class="col-xs-12 col-md-3">
		<?php if(isset($block4)){ echo $block4; }?>
	</div>
	<div class="col-xs-12">
	<div class="text-powered">
		<div class="col-sm-6">
			<p><?php echo $powered; ?></p>
		</div>
		<div class="col-sm-6">
			<img src="image/catalog/payment.png" alt="payment" />
		</div>
	</div>
	</div>
	</div>
</div>
  <div id="back-top"><i class="fa fa-angle-up"></i></div>
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