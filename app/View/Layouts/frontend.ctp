<?php
    $twitter_username = '@'.Inflector::slug(strtolower($mySetting['title']));
    if( empty( $this->Get->getData() ) )    $this->Get->create($data);
    if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
?>
<!DOCTYPE html>
<html lang="<?php echo (empty($language)?'en':$language); ?>">
	<head>
		<?php echo $this->Html->charset(); ?>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<?php echo $this->Html->meta('rss' , '/entries/index.rss'); ?>
		<meta name="author" content="<?php echo $mySetting['title']; ?>">
		<meta name="keywords" content="<?php echo $meta_tags['EntryMeta']['meta_keywords'] ?? $mySetting['tagline']; ?>">
		<meta name="description" content="<?php echo $meta_tags['EntryMeta']['meta_description'] ?? $mySetting['description']; ?>">
		<title><?php echo $meta_tags['EntryMeta']['meta_title'] ?? $this->fetch('title'); ?></title>
		<?php
            // ----------------- Open Graph protocol ---------------------
            echo '<meta property="og:url" content="http://'.$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'].'" />';
            echo '<meta property="og:site_name" content="'.$mySetting['title'].'" />';
            echo '<meta property="og:type" content="website" />';

            // ref: https://dev.twitter.com/cards/types/summary-large-image
            echo '<meta name="twitter:card" content="summary_large_image">';
            echo '<meta name="twitter:site" content="'.$twitter_username.'">';
            echo '<meta name="twitter:creator" content="'.$twitter_username.'">';

            if(!empty($myEntry))
            {
                if($myEntry['Entry']['slug'] == 'home')
                {
                    echo '<meta property="og:title" content="'.$mySetting['title'].'" />';
                    echo '<meta name="twitter:title" content="'.$mySetting['title'].'">';

                    echo '<meta property="og:description" content="'.($meta_tags['EntryMeta']['meta_description'] ?? $mySetting['description']).'" />';
                    echo '<meta name="twitter:description" content="'.($meta_tags['EntryMeta']['meta_description'] ?? $mySetting['description']).'">';

                    if(!empty($mySetting['homepage_share']))
                    {
                        echo '<meta property="og:image" content="'.$this->Get->host_name().'img/upload/'.$mySetting['homepage_share'].'.'.$myImageTypeList[$mySetting['homepage_share']].'" />';
                        echo '<meta name="twitter:image" content="'.$this->Get->host_name().'img/upload/'.$mySetting['homepage_share'].'.'.$myImageTypeList[$mySetting['homepage_share']].'">';
                    }
                }
                else
                {
                    if(!empty($myEntry['Entry']['title']))
                    {
                        echo '<meta property="og:title" content="'.strip_tags($myEntry['Entry']['title']).'" />';
                        echo '<meta name="twitter:title" content="'.strip_tags($myEntry['Entry']['title']).'">';
                    }

                    if(!empty($myEntry['EntryMeta']['teaser']))
                    {
                        echo '<meta property="og:description" content="'.strip_tags($myEntry['EntryMeta']['teaser']).'" />';
                        echo '<meta name="twitter:description" content="'.strip_tags($myEntry['EntryMeta']['teaser']).'">';
                    }
                    else if(!empty($myEntry['Entry']['description']))
                    {
                        echo '<meta property="og:description" content="'.strip_tags($myEntry['Entry']['description']).'" />';
                        echo '<meta name="twitter:description" content="'.strip_tags($myEntry['Entry']['description']).'">';
                    }

                    // share image should be with watermark if available !!
                    if(!empty($myEntry['EntryMeta']['share_image']))
                    {
                        echo '<meta property="og:image" content="'.$this->Get->host_name().'img/upload/'.$myEntry['EntryMeta']['share_image'].'.'.$myImageTypeList[$myEntry['EntryMeta']['share_image']].'" />';
                        echo '<meta name="twitter:image" content="'.$this->Get->host_name().'img/upload/'.$myEntry['EntryMeta']['share_image'].'.'.$myImageTypeList[$myEntry['EntryMeta']['share_image']].'">';
                    }
                    else if(!empty($myEntry['Entry']['main_image']))
                    {
                        echo '<meta property="og:image" content="'.$this->Get->host_name().'img/upload/'.$myEntry['Entry']['main_image'].'.'.$myImageTypeList[$myEntry['Entry']['main_image']].'" />';
                        echo '<meta name="twitter:image" content="'.$this->Get->host_name().'img/upload/'.$myEntry['Entry']['main_image'].'.'.$myImageTypeList[$myEntry['Entry']['main_image']].'">';
                    }
                }
            }
        ?>
<!-- 		FAVICON IMAGE -->
		<link rel="shortcut icon" href="<?php echo $imagePath."favicon.ico"; ?>" type="image/x-icon" />

<!-- 		SITE & LINKPATH SETTING FOR GLOBAL JAVASCRIPT -->
		<script type="text/javascript">
			var site = '<?php echo $site; ?>';
		  	var linkpath = '<?php echo $imagePath; ?>';
            var langpath = '<?php echo $langPath; ?>';
		</script>

		<?php
			// ================================================== >>>
			// load our CSS script...
			// ================================================== >>>
			echo $this->Html->css('bootstrap');
//			echo $this->Html->css('bootstrap-3');
			echo $this->Html->css('colorbox');

            // datetimepicker UI styles !!
            echo $this->Html->css('smoothness/jquery-ui-1.12.1.min');
        ?>
<!--
        <link rel="stylesheet" type="text/css" href="<?php echo $imagePath; ?>slick/slick.css"/>
		<link rel="stylesheet" type="text/css" href="<?php echo $imagePath; ?>slick/slick-theme.css"/>
-->
        <?php
            // custom style !!
            echo $this->Html->css('admin/style');
/*
            echo '<link rel="stylesheet/less" href="'.$imagePath.'less/style.less"/>';
            echo $this->Html->script('less.min'); // convert less into css script !!
*/
			echo $this->Html->css('loading');

			// ================================================== >>>
			// load our JS script...
			// ================================================== >>>
            echo $this->Html->script('jquery-1.11.0.min');
			echo $this->Html->script('jquery-migrate-1.2.1.min'); // Migrate older jQuery code to jQuery 1.9+
			echo $this->Html->script('jquery.fitvids'); // make video in ckeditor being responsive !!

            // Colorbox !!
			echo $this->Html->script('jquery.colorbox');
			echo $this->Html->script('colorbox_resize'); // make colorbox responsive !!

            // datetimepicker UI script !!
            echo $this->Html->script('jquery-ui-1.12.1.min');
            echo $this->Html->script('jquery-ui-touch-punch');
            echo $this->Html->script('jquery-ui-timepicker-addon');

			// bootstrap script !!
			echo $this->Html->script('bootstrap.min');
//			echo $this->Html->script('bootstrap.min-3');

            // Automatic Burger Menu jQuery !!
//          echo $this->Html->script('jquery.ultimate-burger-menu');

            // Automatic Mobile Menu jQuery !!
//          echo $this->Html->script('jquery.mobilemenu');

			// ** Use this script to check browser support HTML-5 certain input types !!
			// ** See http://diveintohtml5.info/detect.html for more details !!
//			echo $this->Html->script('modernizr-2.6.1.min');
		?>
<!--		<script src="<?php echo $imagePath; ?>slick/slick.min.js"></script>    -->
        <?php
            // custom javascript !!
	    	echo $this->Html->script('smooth_scrolling');
	    	echo $this->Html->script('number_format');
			echo $this->Html->script('admin');
			echo $this->Html->script('ajax');
			echo $this->fetch('script');

	    	// GOOGLE ANALYTICS CODES
	    	if(!empty($mySetting['google_analytics_code']))
			{
				?>
				<script type="text/javascript">
				  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

				  ga('create', '<?php echo $mySetting['google_analytics_code']; ?>', 'auto');
				  // ga('set', '&uid', 'USER_ID'); // Set the user ID using signed-in user_id.
				  ga('send', 'pageview');
				</script>
				<?php
			}

			// Dynamic Website Header
			echo $mySetting['header'];
		?>
	</head>

	<body>
	    <!-- very first header from database ... -->
		<?php echo $mySetting['top_insert']; ?>

		<div class="container-fluid">
			<div class="header row-fluid">
				<div class="span7">
					<img src="<?php echo $imagePath; ?>images/logo.png" />
				</div>

				<div class="username span5">
					Hi, <?php echo (empty($user['User']['firstname'])?'Guest':$user['User']['firstname']." ".$user['User']['lastname']); ?>! <?php echo (empty($user['User']['firstname'])?"":$this->Html->link('Logout',array('controller'=>'accounts','action'=>'logout','admin'=>false), array('class' => 'btn btn-danger'))); ?>
				</div>
			</div>
			<div class="layout-header row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="sidebar-title span2">
							<h4>FRONT END</h4>
						</div>

						<div class="body-title span10">
							<div class="breadcrumbs">
							    <p><?php echo $this->Html->getCrumbs(' &raquo; ',array('text'=>$mySetting['title'] , 'escape'=>false)); ?></p>
								<div class="live-time">
									<?php echo date($mySetting['date_format'] , gmt_adjustment()); ?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
      		<div class="layout-body row-fluid">
      			<!--HEADER-->
				<div class="sidebar span2">
					<ul class="nav">
                    <?php
                        $this->Get->navigation(array('open_tag'=>'<li>','close_tag'=>'</li>'));
                    ?>
                    </ul>
				</div>

				<!--BODY-->
				<div class="content span10">
					<div id="child-content" class="media inner-content">
						<?php echo $this->Session->flash(); ?>
						<?php echo $this->fetch('content'); ?>
					</div>
				</div>
      		</div><!--/row-->
	    </div><!--/.fluid-container-->

	    <!-- very last footer from database ... -->
		<?php echo $mySetting['bottom_insert']; ?>

		<!-- ADDITIONAL SCRIPT FOR LAYOUT -->
		<script>
			$(document).ready(function(){
				// Target your .container, .wrapper, .post, etc.
    			$("body").fitVids();

                // make dynamic active menu-list !!
                $('ul.nav li.menu-<?php echo (!empty($myType)?$myType['Type']['slug']:(!empty($myEntry)?$myEntry['Entry']['slug']:'home')); ?>').addClass('active');

                // table responsive class !!
                $('table').parent(':not(.table-responsive)').wrapInner('<div class="table-responsive"></div>');

                <?php
                    if(!empty($this->request->query['target']))
                    {
                        ?>
                $(window).load(function(){
                    setTimeout(function(){
                        if( $('#<?php echo $this->request->query['target']; ?>').length )
                        {
                            $('body').append('<a class="smooth-scrolling hidden" href="#<?php echo $this->request->query['target']; ?>"></a>');
                            $('a.smooth-scrolling[href=#<?php echo $this->request->query['target']; ?>]')[0].click();
                        }
                    }, 100);
                });
                        <?php
                    }
                ?>
		  	});
		</script>
	</body>
</html>
