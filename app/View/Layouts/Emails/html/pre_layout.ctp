<?php
/**
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.cake.libs.view.templates.layouts.email.html
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
 
$this->Get->create();
$data = $this->Get->getData();
extract($data , EXTR_SKIP);

// use Full Path ...
$imagePath = $this->Get->host_name(); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
    <head>
        <title><?php echo $this->fetch('title'); ?></title>
    </head>
	<body style='font-family: "Courier New", Courier, monospace; font-size: 14px;'>
		<pre><?php echo $this->fetch('content'); ?></pre>
		<?php if(!empty($mySetting['title'])): ?>
		<br/>
		<br/>
		<p>
			best regards,<br/><br/>
			<strong><a style="text-decoration: none;" href="<?php echo $imagePath; ?>"><?php echo $mySetting['title']; ?></a> (Mailing System)</strong><br/>
			<span style="font-style: italic;"><?php echo $mySetting['description']; ?></span>
		</p>
		<?php endif; ?>
	</body>
</html>