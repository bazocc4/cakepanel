<?php
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
	$_SESSION['now'] = str_replace('&amp;','&',htmlentities($_SERVER['REQUEST_URI']));
	if($isAjax == 0)
	{
		?>
<?php
	$this->Html->addCrumb($myType['Type']['name'], '/admin/entries/'.$myType['Type']['slug']);	
?>
<script type="text/javascript">
    var image_state = [];
    
	$("a#<?php echo $myType['Type']['slug']; ?>").addClass("active");
	$(document).ready(function(){
		// toggle photo click !!
        $(document).on('click', 'div.photo', function(e){            
            if($(e.target).attr('id') != 'myDeleteMedia')
            {
                if( $(this).attr('data-state') == '0' )
                {
                    $(this).css('border-color', 'red');
                    $(this).attr('data-state', '1');

                    image_state.push( $(this).attr('alt') );
                }
                else
                {
                    $(this).css('border-color', '');
                    $(this).attr('data-state', '0');

                    var index = image_state.indexOf( $(this).attr('alt') );
                    if (index > -1)
                    {
                        image_state.splice(index, 1);
                    }
                }
            }            
        });
        
        // delete-media-library click event !!
        $('#delete-media-library').click(function(e){
            e.preventDefault();            
            if(image_state.length)
            {
                if(confirm("Are you sure to delete all selected images?"))
                {
                    $.ajaxSetup({cache: false});
                    var url = site+"entries/deleteMediaBatch/"+image_state.join('|');
                    
                    $.get(url,function(result){
                        if(result.length) // if there is error message ?
                        {
                            var header = 'The following image is currently associated with the following database(s) :\n\n';
                            var footer = '\nPlease remove them first !';
                            alert(header + result + footer);
                        }
                        else // execute delete process !!
                        {					
                            window.location = url;
                        }	
                    });
                }
            }
            else
            {
                alert('Please select at least 1 image to be deleted!');
            }
        });
        
        // trigger search function !!
        $('input#searchMe').keyup(function(e){
            var code = e.keyCode || e.which;
            if(code == 13) { //Enter keycode
               $('a.searchMeLink').click();
            }
		});
	});
</script>
<div class="inner-header row-fluid">
    <div class="span5">
        <div class="title">
            <h2><?php echo $totalList.' '.$myType['Type']['name']; ?></h2>
            <?php
                if(!empty($lastModified))
                {
                    ?>
                    <p id="id-title-description" class="title-description">
                        Last updated by <a href="javascript:;"><?php echo (empty($lastModified['AccountModifiedBy']['username'])?$lastModified['AccountModifiedBy']['email']:$lastModified['AccountModifiedBy']['username']); ?></a> at <?php echo date_converter($lastModified['Entry']['modified'], $mySetting['date_format'] , $mySetting['time_format']); ?>
                    </p>
                    <?php
                }
            ?>
        </div>
    </div>
    <div class="span7">
        <?php echo $this->Html->link('Upload Image',array('action'=>'upload_popup',(empty($myChildType)?$myType['Type']['slug']:$myChildType['Type']['slug']),'admin'=>false),array('class'=>'btn btn-primary fr get-from-library', 'style'=>'margin: 0px 0px 10px 10px;')); ?>	
        <?php echo $this->Html->link('Delete Image','#',array('id'=>'delete-media-library', 'class'=>'btn btn-danger fr', 'style'=>'margin-bottom: 10px;')); ?>
        <div class="input-prepend" style="margin-right: 10px; margin-left: 10px;">
            <span class="add-on" style="margin-right: 3px; margin-top : 9px;">
                <?php
                    echo $this->Html->link("<i class='icon-search'></i>",array("action"=>$myType['Type']['slug'],'index','1') , array("class"=>"ajax_mypage searchMeLink","escape"=>false));
                ?>
            </span>
            <input style="width: 160px;" id="searchMe" class="span2" type="text" placeholder="search media here...">
        </div>
    </div>
</div>		
		<?php
		echo '<div class="inner-content" id="inner-content">';
		echo '<div id="ajaxed" class="list">';
	}
	else
	{
        if(isset($search) && $search == "yes")
		{
			echo '<div id="ajaxed" class="list">';
		}
		?>
			<script type="text/javascript">
				$(document).ready(function(){
					$('#cmsAlert').css('display' , 'none');		
                    
                    // check for image_state !!
                    $('div.photo').each(function(i, el){
                        if( image_state.indexOf( $(el).attr('alt') ) > -1 )
                        {
                            $(el).css('border-color', 'red');
                            $(el).attr('data-state', '1');
                        }
                    });
				});
			</script>
		<?php
	}
?>
<script type="text/javascript">
    $(document).ready(function(){
        // media sortable
        $('div.list').sortable({ opacity: 0.6, cursor: 'move',
			stop: function(event, ui) {
				var tmp = '';
				// construct
				$('div.list div.photo').each(function(){
					tmp += $(this).attr('alt') + ',';
				});				
				$.ajaxSetup({cache: false});
				$.post(site+'entries/reorder_list',{
					src_order: $('input[type=hidden]#determine').val(),
					dst_order: tmp
				});
			}
		});
    });
</script>
<?php
	$orderlist = "";
	foreach ($myList as $p):
	$orderlist .= $p['Entry']['sort_order'].",";
		?>
<div class="photo" alt="<?php echo $p['Entry']['id']; ?>" data-toggle="tooltip" title="Click to select image!" data-state="0">
	<div class="image">
		<?php echo $this->Html->image('upload/thumb/'.$p['Entry']['id'].'.'.$myImageTypeList[$p['Entry']['id']], array('alt' => $p['Entry']['title'],'title' => $p['Entry']['title'],'width'=>150)); ?>
	</div>
	<div class="description">
		<p><?php echo $p['Entry']['title']; ?></p>
		<?php echo $this->Html->link('',array('action'=>'mediaused',$p['Entry']['id'],'admin'=>false),array('class'=>'icon-remove icon-white' , 'id'=>'myDeleteMedia')); ?>			
	</div>
	<input type='hidden' value ='<img style="width:150px" alt="<?php $p['Entry']['title']; ?>" title="<?php echo $p['Entry']['title']; ?>" src="<?php echo $imagePath; ?>img/upload/<?php echo $p['Entry']['id'].'.'.$myImageTypeList[$p['Entry']['id']]; ?>" />'>
</div>	
<?php endforeach; ?>
<input type="hidden" id="determine" value="<?php echo $orderlist; ?>" />
<div class="clear"></div>
<input type="hidden" value="<?php echo $countPage; ?>" size="50" id="myCountPage"/>
<input type="hidden" value="<?php echo $left_limit; ?>" size="50" id="myLeftLimit"/>
<input type="hidden" value="<?php echo $right_limit; ?>" size="50" id="myRightLimit"/>
<!-- myTypeSlug is for media upload settings purpose !! -->
<input type="hidden" value="<?php echo $myType['Type']['slug']; ?>" size="100" id="myTypeSlug"/>
<?php
	if($isAjax == 0 || $isAjax == 1 && isset($search) && $search == "yes")
	{
		echo '</div>';
		echo $this->element('admin_footer');
		echo '<div class="clear"></div>';
		echo ($isAjax==0?"</div>":"");
	}
?>

<?php if($totalList <= 0){ ?>
	<div class="empty-state item">
		<div class="wrapper-empty-state">
			<div class="pic"></div>
			<h2>No Items Found!</h2>
			<!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante nisi, fermentum eu mattis id, vehicula dapibus sapien.</p>-->
			<?php 
				echo $this->Html->link('Get Started',array('action'=>'upload_popup',(empty($myChildType)?$myType['Type']['slug']:$myChildType['Type']['slug']),'admin'=>false),array('class'=>'btn btn-primary get-from-library')); 
			?>
		</div>
	</div>
<?php } ?>