<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts.Email.html
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       https://opensource.org/licenses/mit-license.php MIT License
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
	<body>
		<?php echo $this->fetch('content'); ?>
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