<?php if (count($languages) >= 1) { ?>
<div class="pull-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
  <div class="btn-group">
	<span class="pull-left text-cl"><?php echo $text_language; ?></span>
    <button class="btn-link dropdown-toggle" data-toggle="dropdown">
    <?php foreach ($languages as $language) { ?>
		<?php if ($language['code'] == $code) { ?>
			<?php echo $language['name']; ?><i class="fa fa-angle-down" aria-hidden="true"></i>
		<?php } ?>
    <?php } ?>
	</button>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
		<?php if ($language['code'] == $code) { ?>
			<li><button class="btn btn-link btn-block language-select language-selected" type="button" name="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></button></li>
		<?php } else { ?>
			<li><button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></button></li>
		<?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
