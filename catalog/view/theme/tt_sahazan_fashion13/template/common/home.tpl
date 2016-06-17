<?php echo $header; ?>
<ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
<?php echo $column_left; ?>
    <?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?>
<?php echo $footer; ?>