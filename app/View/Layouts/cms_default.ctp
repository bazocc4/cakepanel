<!DOCTYPE html>
<html lang="en">
	<head>
		<?php echo $this->Html->charset(); ?>
		<title>
			<?php echo $this->fetch('title'); ?>
		</title>

<!-- 		PREVENT PAGE CACHING -->
		<meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="cache-control" content="no-store" />
        <meta http-equiv="cache-control" content="must-revalidate" />
        <meta http-equiv="pragma" content="no-cache" />
        <meta http-equiv="expires" content="0" />

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="<?php echo $mySetting['title']; ?>">
		<meta name="keywords" content="<?php echo $mySetting['tagline']; ?>">
		<meta name="description" content="<?php echo $mySetting['description']; ?>">
		<META NAME="ROBOTS" CONTENT="NOINDEX">
<!-- 		FAVICON IMAGE -->
		<link rel="shortcut icon" href="<?php echo $imagePath."favicon.ico"; ?>" type="image/x-icon" />
		<link rel="apple-touch-icon" sizes="57x57" href="<?php echo $imagePath."favicon/apple-icon-57x57.png"; ?>">
    <link rel="apple-touch-icon" sizes="60x60" href="<?php echo $imagePath."favicon/apple-icon-60x60.png"; ?>">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo $imagePath."favicon/apple-icon-72x72.png"; ?>">
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo $imagePath."favicon/apple-icon-76x76.png"; ?>">
    <link rel="apple-touch-icon" sizes="114x114" href="<?php echo $imagePath."favicon/apple-icon-114x114.png"; ?>">
    <link rel="apple-touch-icon" sizes="120x120" href="<?php echo $imagePath."favicon/apple-icon-120x120.png"; ?>">
    <link rel="apple-touch-icon" sizes="144x144" href="<?php echo $imagePath."favicon/apple-icon-144x144.png"; ?>">
    <link rel="apple-touch-icon" sizes="152x152" href="<?php echo $imagePath."favicon/apple-icon-152x152.png"; ?>">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo $imagePath."favicon/apple-icon-180x180.png"; ?>">
		<!--
    <link rel="icon" type="image/png" sizes="36x36"  href="<?php echo $imagePath."favicon/android-icon-36x36.png"; ?>">
    <link rel="icon" type="image/png" sizes="48x48"  href="<?php echo $imagePath."favicon/android-icon-48x48.png"; ?>">
    <link rel="icon" type="image/png" sizes="72x72"  href="<?php echo $imagePath."favicon/android-icon-72x72.png"; ?>">
    <link rel="icon" type="image/png" sizes="96x96"  href="<?php echo $imagePath."favicon/android-icon-96x96.png"; ?>">
    <link rel="icon" type="image/png" sizes="144x144"  href="<?php echo $imagePath."favicon/android-icon-144x144.png"; ?>">
    <link rel="icon" type="image/png" sizes="192x192"  href="<?php echo $imagePath."favicon/android-icon-192x192.png"; ?>">
		 -->
    <link rel="manifest" href="<?php echo $imagePath."favicon/manifest.json"; ?>">
    <meta name="msapplication-TileColor" content="#ffffff">
		<meta name="msapplication-TileImage" content="<?php echo $imagePath."favicon/microsoft-icon-144x144.png"; ?>">
		<meta name="theme-color" content="#ffffff">

<!-- 		SITE & LINKPATH SETTING FOR GLOBAL JAVASCRIPT -->
		<script type="text/javascript">
			var site = '<?php echo $site; ?>';
		  	var linkpath = '<?php echo $imagePath; ?>';
		</script>

		<?php
			// ================================================== >>>
			// load our CSS script...
			// ================================================== >>>
			echo $this->Html->css('bootstrap');
			echo $this->Html->css('smoothness/jquery-ui-1.8.18.custom');
			echo $this->Html->css('colorbox');
			echo $this->Html->css('jquery.fileupload-ui');
			echo $this->Html->css('admin/style');

			// ================================================== >>>
			// load our JS script...
			// ================================================== >>>
            echo $this->Html->script('jquery-1.7.2.min');
            echo $this->Html->script('jquery-ui-1.8.18.custom.min');
            echo $this->Html->script('jquery-ui-touch-punch');
            echo $this->Html->script('jquery-ui-timepicker-addon');
			echo $this->Html->script('bootstrap.min');

            // ** Use this script to check browser support HTML-5 certain input types !!
			// ** See http://diveintohtml5.info/detect.html for more details !!
			echo $this->Html->script('modernizr-2.6.1.min');
		?>

		<!-- Le javascript
	    ================================================== -->
		<script src="<?php echo $imagePath; ?>js/jquery.imagesloaded.js"></script>
		<script src="<?php echo $imagePath; ?>js/jquery.colorbox.js"></script>
		<script src="<?php echo $imagePath; ?>js/validation.js"></script>
		<script src="<?php echo $imagePath; ?>js/script.js"></script>
		<script src="<?php echo $imagePath; ?>js/media.js"></script>
		<script src="<?php echo $imagePath; ?>js/livedate.js"></script>

<!-- 		for CK Editor -->
	    <script type="text/javascript" src="<?php echo $imagePath; ?>js/ckeditor/ckeditor.js"></script>
	    <script type="text/javascript" src="<?php echo $imagePath; ?>js/ckeditor/adapters/jquery.js"></script>

<!-- 		for Cropping Image -->
		<link rel="stylesheet" href="<?php echo $imagePath; ?>css/jquery.jcrop.css" type="text/css" />
		<script type="text/javascript" src="<?php echo $imagePath; ?>js/jquery.jcrop.js"></script>

<!-- 		for jquery uploading file -->
		<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/vendor/jquery.ui.widget.js"></script>
		<!-- The Templates plugin is included to render the upload/download listings -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/tmpl.min.js"></script>
		<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/load-image.min.js"></script>
		<!-- The Canvas to Blob plugin is included for image resizing functionality -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/canvas-to-blob.min.js"></script>
		<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/jquery.iframe-transport.js"></script>
		<!-- The basic File Upload plugin -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/jquery.fileupload.js"></script>
		<!-- The File Upload file processing plugin -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/jquery.fileupload-fp.js"></script>
		<!-- The File Upload user interface plugin -->
		<script src="<?php echo $imagePath; ?>js/uploadfile/jquery.fileupload-ui.js"></script>
        <?php
            // our custom javascript !!
            echo $this->Html->script('admin');
            echo $this->Html->script('ajax');
            echo $this->fetch('script');
        ?>
	</head>

	<body>
		<div class="container-fluid">
      		<div class="header row-fluid">
				<div class="span7">
					<a target="_blank" alt="homepage" href="<?php echo $imagePath; ?>">
						<?php if (empty($mySetting['homepage_share'])): ?>
	            <img src="<?php echo $imagePath; ?>images/logo.png" />
	          <?php else: ?>
	            <img src="<?php echo $this->Get->image_link(array('id'=>$mySetting['homepage_share']))['display']; ?>"/>
	          <?php endif; ?>
					</a>
				</div>

				<div class="username span5">
					Hi, <?= $user['username']; ?>! <?php echo $this->Html->link('Logout',array('controller'=>'accounts','action'=>'logout','admin'=>true), array('class' => 'btn btn-danger')); ?>
				</div>
			</div>

			<div class="layout-header row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="sidebar-title span2">
							<h4>DASHBOARD</h4>
						</div>

						<div class="body-title span10">
							<div class="breadcrumbs">
								<p><?php echo $this->Html->getCrumbs(' &raquo; ',array('text'=>$mySetting['title'] , 'escape'=>false)); ?></p>
								<div class="live-time">
									<?php echo date($mySetting['date_format'] , gmt_adjustment()); ?>
									<i class="icon-time icon-white"></i>
									<span id="clock"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="layout-body row-fluid">

				<!--HEADER-->
				<div class="sidebar span2">
					<ul>
					    <li class="<?php echo ($user['role_id'] > 2?'hide':''); ?>">
					        <?php
					        	if($user['role_id'] > 1)
					        	{
					        		echo $this->Html->link('Roles',array('controller'=>'master','action'=>'roles'),array('id'=>'master'));
					        	}
					        	else
					        	{
					        		echo $this->Html->link('Master',array('controller'=>'master','action'=>'types'),array('id'=>'master'));
					        	}

                            ?>
					    </li>
						<li class="<?php echo ($user['role_id'] > 2?'hide':''); ?>">
							<?php
								echo $this->Html->link('Settings',array('controller'=>'settings','action'=>'index'),array('id'=>'settings'));
							?>
						</li>
						<li class="<?php echo ($user['role_id'] > 2?'hide':''); ?>">
							<?php
								echo $this->Html->link('Users',array('controller'=>'users','action'=>'index'),array('id'=>'users'));
							?>
						</li>
						<li class="<?php echo ($user['role_id'] > 2?'hide':''); ?>">
							<?php
								echo $this->Html->link('Accounts',array('controller'=>'accounts','action'=>'index'),array('id'=>'accounts'));
							?>
						</li>
						<li>
							<?php
								echo $this->Html->link('Media Library',array('controller'=>'entries','action'=>'media'),array('id'=>'media'));
							?>
						</li>
						<li class="<?php echo ($user['role_id'] > 1?'hide':''); ?>">
							<?php
								echo $this->Html->link('Supad Pages',array('controller'=>'entries','action'=>'pages'),array('id'=>'pages'));
							?>
						</li>

						<?php
                            $haystack_cat = array();
                            $list_privilege = explode('|', $user['Role']['privilege']);
							foreach ($types as $key => $value)
							{
								if($value['Type']['slug'] != 'media' && in_array($value['Type']['slug'].'_view', $list_privilege))
								{
	                                    // begin process !!
	                                    $typecat = "";
	                                    foreach($value['TypeMeta'] as $subkey => $subvalue)
	                                    {
	                                        if($subvalue['key'] == 'category')
	                                        {
	                                            $typecat = strtolower($subvalue['value']);
	                                            array_push($haystack_cat , $typecat );
	                                            break;
	                                        }
	                                    }

										echo "<li class='hide database-menu'>";
										echo $this->Html->link($value['Type']['name'] ,array('controller'=>'entries','action'=>$value['Type']['slug']) ,array('id'=>$value['Type']['slug']));
	                                    echo "<input type='hidden' value='".$typecat."'>";
										echo "</li>";
								}
							}

                            $haystack_cat = array_unique($haystack_cat);
                            foreach($haystack_cat as $key => $value)
                            {
                                if(strtolower($value) != 'others')
                                {
                                    // later this place will be appended by jQuery below !!
                                    echo '<li class="separator"><a class="sidebar-menu" href="#">'.$value.'</a></li>';
                                    echo '<div style="display:none;"></div>';
                                }
                            }
						?>

						<li class='separator'><?php echo $this->Html->link('others','#',array('class'=>'sidebar-menu')); ?></li>
                        <div style="display:none;">
                            <?php
                                echo "<li>";
                                echo $this->Html->link('backup data' ,array('controller'=>'entries','action'=>'backup') ,array('id'=>'backup'));
                                echo "</li>";
                            ?>
                        </div>
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

<!-- 		ADDITIONAL SCRIPT FOR LAYOUT -->
		<script>
            $(document).ready(function(){
                // Append each of database li menu to their suitable category place !!
                $('li.database-menu').each(function(i,el){
                    var typecat = $(el).find('input[type=hidden]').val();
                    var $groupmenu = $('li.separator > a.sidebar-menu').filter(function(){
                        return $.trim( $(this).text() ) == typecat;
                    });
                    if($groupmenu.length > 0)
                    {
                        $groupmenu.parent('li').next('div').append( $(el).removeClass('hide') );
                    }
                });

                // Sidebar Menu Accordion !!
                $('a.sidebar-menu').attr('data-toggle' , 'tooltip');
                $('a.sidebar-menu').attr('data-placement' , 'right');
                $('a.sidebar-menu').attr('title' , 'CLICK HERE TO EXPAND MENU');
				$('a.sidebar-menu').parent('li').next("div").find('a.active').closest('div').show();
				$('a.sidebar-menu').click(function(e){
                    e.preventDefault();
                    $('a.sidebar-menu').not(this).parent('li').next("div:visible").slideUp('fast');
                    $(this).parent('li').next("div").slideToggle('fast');
				});

				// CSS HELPER FUNCTION FOR SIDEBAR POSITION !! * CK Editor height *
				$("div.sidebar.span2 ul").css("padding-bottom" , (122 + parseInt($("div.container-fluid").height()) - parseInt($("div.sidebar.span2 ul").height())) + "px");

                // initialize bootstrap tooltip !!
                $('[data-toggle=tooltip]').tooltip({
                    container: 'body',
                    html: true,
                }).each(function(){
                    $(this).attr('title' , $(this).attr('alt') );
                });
		  	});
		</script>
	</body>
</html>
