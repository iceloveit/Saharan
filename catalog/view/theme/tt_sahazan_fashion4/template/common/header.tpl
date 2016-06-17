<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/tt_sahazan_fashion4/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Carrois+Gothic" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css">
<script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.plugin.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_sahazan_fashion4/stylesheet/opentheme/ocslideshow/ocslideshow.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_sahazan_fashion4/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_sahazan_fashion4/stylesheet/opentheme/css/animate.css" rel="stylesheet" />
<link href="catalog/view/theme/tt_sahazan_fashion4/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet" />
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_sahazan_fashion4/stylesheet/opentheme/ocquickview/css/ocquickview.css" rel="stylesheet">
<link href="catalog/view/theme/tt_sahazan_fashion4/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.lazyload.min.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
	<div class="lang-cur">
    <?php echo $currency; ?>
    <?php echo $language; ?>
	</div>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li class="btn-group">
			<button class="btn-link dropdown-toggle" data-toggle="dropdown">
                <?php echo $text_account; ?>
                <i class="fa fa-angle-down"></i>
              </button>
			<?php if($use_ajax_login): ?>
				<ul class="dropdown-menu ul-account">
			<?php else: ?>
				<ul class="dropdown-menu">
			<?php endif; ?>
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
			<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a></li>
            <li>
				<?php if($use_ajax_login): ?>
					<a id="a-logout-link" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
				<?php else: ?>
					<a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
				<?php endif; ?>
			</li>			
            <?php } else { ?>
            <li>
				<?php if($use_ajax_login): ?> 
					<a id="a-register-link" href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
				<?php else: ?>
					<a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> 
				<?php endif; ?>
			</li>
            <li>
				<?php if($use_ajax_login): ?> 
					<a id="a-login-link" href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
				<?php else: ?>
					<a href="<?php echo $login; ?>"><?php echo $text_login; ?></a> 
				<?php endif; ?>
			</li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><span><?php echo $text_shopping_cart; ?></span></a></li>
		<li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><span><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
  <div class="header-inner">
    <div class="row">
      <div class="col-xs-12 col-md-4">
		<p class="text-mess"><?php echo $text_message; ?></p>
		<div class="support">
			<i class="fa fa-phone-square"></i>
			<div class="text">
			<p class="phone">SUPPORT + 0123 456 789</p>
			<p class="work-time">Monday to Friday: 10.00 AM - 05.00 PM</p>
			</div>
		</div>
	</div>  
		<div class="col-xs-12 col-md-4">
			<div id="logo">
			  <?php if ($logo) { ?>
			  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
			  <?php } else { ?>
			  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			  <?php } ?>
			</div>
	  </div>	  
      <div class="col-xs-12 col-md-4"><?php  echo $cart; echo $search;?></div>
    </div>
  </div>
  </div>
  <div class="main-menu">
	  <div class="container">
			<div id="logo2">
			  <?php if ($logo) { ?>
			  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
			  <?php } else { ?>
			  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			  <?php } ?>
			</div>
			<?php if(isset($block1)){ echo $block1; }?>
	  </div>
  </div>
  <?php if(isset($block2)){ echo $block2; }?>
</header>