<!DOCTYPE html>
<html lang="en">
  <head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="<?php echo $mySetting['title']; ?>">
	<meta name="keywords" content="<?php echo $mySetting['tagline']; ?>">
	<meta name="description" content="<?php echo $mySetting['description']; ?>">
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $this->fetch('title'); ?>
	</title>
<!-- 		FAVICON IMAGE -->		
	<link rel="shortcut icon" href="<?php echo $imagePath."favicon.ico"; ?>" type="image/x-icon" />	
		<?php
			echo $this->Html->css('bootstrap');
			echo $this->Html->css('admin/style');
			
			echo $this->Html->script('jquery-1.7.2.min');
			echo $this->Html->script('jquery.color');
			echo $this->Html->script('bootstrap.min');
			echo $this->fetch('script');
		?>	
</head>
<body>
<?php echo $this->fetch('content'); ?>
</body>
</html>