<script>
	$(document).ready(function(){
		$('.popup-action').click(function(){
			$('.popup-action button').removeAttr('disabled');
		});
	});
</script>
<?php
	if($isAjax == 0)
	{
		?>
<!--      ----------------------------------------------------------------------------------------------------------		 -->
<script>
    $(document).ready(function(){
        // trigger search function !!
        $('input#searchMe').keyup(function(e){
            var code = e.keyCode || e.which;
            if(code == 13) { //Enter keycode
               $('a.searchMeLink').click();
            }
		});
    });
</script>
<input type="hidden" value="<?php echo $crop; ?>" id="updateChildPicCrop" />
<div id="upload-popup" class="media upload-popup">
	<div class="layout-header">
		<div class="sidebar-title" style="background: none;">
			<h4>Media Library</h4>
			<a href="javascript:void(0);" class="close"><i class="icon-remove icon-white"></i></a>
		</div>
	</div>
	
	<div class="layout-content">
		<div class="tabs">
			<ul class="nav nav-tabs">
				<li class="active">
					<?php
						echo $this->Html->link("Insert from Media Library (".$totalList.")","#tabs1", array("alt"=>$imagePath."entries/media_popup_single/1"));
					?>
				</li>
				<li><a href="#tabs2">Upload from Local Disk</a></li>
			</ul>
			
			<div id="tabs1" class="tabs-container">
                <div class="inner-header-media">
                    <div class="input-prepend" style="margin: 0px 30px 0px 0px;">
                        <span class="add-on" style="margin-right: 3px; margin-top : 9px;">
                            <?php
                                echo $this->Html->link("<i class='icon-search'></i>",array("action"=>'media_popup_single','1') , array("class"=>"ajax_mymedia searchMeLink","escape"=>false));
                            ?>
                        </span>
                        <input style="width: 160px;" id="searchMe" class="span2" type="text" placeholder="search media here...">
                    </div>
                </div>
				<div id="popup-inner-content">
				    <div class="tabs-content" id="popup-ajaxed">
        <!--      ----------------------------------------------------------------------------------------------------------		 -->
                <?php
            }
            else
            {
                if(($search??'') == "yes")
                {
                    echo '<div class="tabs-content" id="popup-ajaxed">';
                }
            }
        ?>

        <?php
            if(!empty($myList))
            {
                foreach ($myList as $key => $value):
                    foreach ($value['EntryMeta'] as $key => $detail) 
                    {
                        if($detail['key'] == 'image_type')
                        {
                            $imageType = $detail['value']; // pasti dapat value nya...
                            break;
                        }
                    }

                    ?>			
                        <div style="cursor: pointer" class="photo" onclick="javascript : $.fn.updateChildPic('<?php echo $value['Entry']['id']; ?>','<?php echo $imageType; ?>','<?php echo $value['Entry']['title']; ?>',$('input[type=hidden]#updateChildPicCrop').val());">
                            <div class="image">
                                <?php echo $this->Html->image('upload/thumb/'.$value['Entry']['id'].'.'.$imageType, array('width'=>150,'alt'=>$value['Entry']['title'],'title' => $value['Entry']['title'])) ?>
                            </div>
                            <div class="description">
                                <p><?php echo $value['Entry']['title']; ?></p>
                                <a href="#" class="icon-plus-sign icon-white"></a>
                            </div>
                        </div>			
                    <?php
                endforeach;
            }
            else
            {
                ?>
        <div class="empty-state item">
            <div class="wrapper-empty-state">
                <div class="pic"></div>
                <h2>No Media Found!</h2>
            </div>
        </div>        
                <?php
            }
        ?>
        <div class="clear"></div>
        <input type="hidden" value="<?php echo $countPage; ?>" id="myCountPage"/>
        <input type="hidden" value="<?php echo $left_limit; ?>" id="myLeftLimit"/>
        <input type="hidden" value="<?php echo $right_limit; ?>" id="myRightLimit"/>

        <?php
            if($isAjax == 0 || $isAjax == 1 && ($search??'') == "yes")
            {
                ?>
        <!--      ----------------------------------------------------------------------------------------------------------		 -->			
                    </div>

                    <?php
                        if($totalList > 0){
                            ?>
                                <div class="popup-action">
                                    <div class="pagination">
                                        <ul>
                                            <?php
                                                echo '<li id="myPagingFirst" class="'.($paging<=1?"disabled":"").'">';
                                                echo $this->Html->link("First",array("action"=>'media_popup_single',1) , array("class"=>"ajax_mymedia"));
                                                echo '</li>';

                                                echo '<li id="myPagingPrev" class="'.($paging<=1?"disabled":"").'">';
                                                echo str_replace('amp;', '', $this->Html->link("&laquo;",array("action"=>'media_popup_single',$paging-1), array("class"=>"ajax_mymedia")));
                                                echo '</li>';

                                                for ($i = $left_limit , $index = 1; $i <= $right_limit; $i++ , $index++)
                                                {
                                                    echo '<li id="myPagingNum'.$index.'" class="'.($i==$paging?"active":"").'">';
                                                    echo $this->Html->link($i,array("action"=>'media_popup_single',$i) , array("class"=>"ajax_mymedia"));				
                                                    echo '</li>';
                                                }

                                                echo '<li id="myPagingNext" class="'.($paging>=$countPage?"disabled":"").'">';
                                                echo str_replace('amp;', '', $this->Html->link("&raquo;",array("action"=>'media_popup_single',$paging+1) , array("class"=>"ajax_mymedia")));
                                                echo '</li>';

                                                echo '<li id="myPagingLast" class="'.($paging>=$countPage?"disabled":"").'">';
                                                echo $this->Html->link("Last",array("action"=>'media_popup_single',$countPage), array("class"=>"ajax_mymedia"));
                                                echo '</li>';
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                            <?php
                        }
                    ?>
                    <?php if($isAjax == 0){ ?>
				</div>
			</div>
			
			<div id="tabs2" class="tabs-container">
				<!-- The file upload form used as target for the file upload widget -->			
				<?php				
					echo $this->Form->create('Entry', array('url'=>['action'=>'UploadHandler'],'type'=>'file','id'=>'fileupload','inputDefaults' => array('label' =>false , 'div' => false)));	
				?>
						<input type="hidden" value="<?php echo $myTypeSlug; ?>" name="data[Type][slug]" id="mediaTypeSlug" />
						<!-- The loading indicator is shown during file processing -->
						<div class="tabs-content">
							<div class="fileupload-progress fade">
									<!-- The global progress bar -->
									<div class="progress progress-success progress-striped active">
											<div class="bar" style="width:0%;"></div>
									</div>
									<!-- The extended global progress information -->
									<div class="progress-extended">&nbsp;</div>
							</div>
								
							<div class="fileupload-loading"></div>
							<br>
							<!-- The table listing the files available for upload/download -->
							<table class="table table-striped"><tbody class="files" data-toggle="modal-gallery" data-target="#modal-gallery"></tbody></table>
						</div>
						
						<div class="popup-action">
							<!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
							<div class="fileupload-buttonbar">
										<!-- The fileinput-button span is used to style the file input field as button -->
										<span class="btn fileinput-button">
												<i class="icon-plus"></i>
												<span>Add Files...</span>
												<input type="file" name="files[]" multiple>
										</span>
										<button type="submit" class="btn btn-primary start">
												<span>Start Upload</span>
										</button>&nbsp;
										<button type="reset" class="btn cancel">
												<span>Clear Queue</span>
										</button>									
								<!-- The global progress information -->
								
							</div>
						</div>
				<?php echo $this->Form->end(); ?>
			</div>
			
		</div>
	</div>
	<input type="hidden" value="<?php echo $mycaller; ?>" id="mycaller" />
	<?php
		if($mycaller == 'ckeditor')
		{
			echo '<input type="hidden" value="'.$_GET["CKEditorFuncNum"].'" id="CKEditorFuncNum" />';
		}
	?>
</div>

<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td class="preview"><span class="fade"></span></td>
        <td class="name"><span>{%=file.name%}</span></td>
        <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
        {% if (file.error) { %}
            <td class="error" colspan="2"><span class="label label-important">{%=locale.fileupload.error%}</span> {%=locale.fileupload.errors[file.error] || file.error%}</td>
        {% } else if (o.files.valid && !i) { %}
            <td>
                <div class="progress progress-success progress-striped active"><div class="bar" style="width:0%;"></div></div>
            </td>
            <td class="start">{% if (!o.options.autoUpload) { %}
                <button class="btn btn-primary">
                    <i class="icon-upload icon-white"></i>
                    <span>{%=locale.fileupload.start%}</span>
                </button>
            {% } %}</td>
        {% } else { %}
            <td colspan="2"></td>
        {% } %}
        <td class="cancel">{% if (!i) { %}
            <button class="btn btn-warning">
                <i class="icon-ban-circle icon-white"></i>
                <span>{%=locale.fileupload.cancel%}</span>
            </button>
        {% } %}</td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        {% if (file.error) { %}
            <td></td>
            <td class="name"><span>{%=file.name%}</span></td>
            <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
            <td class="error" colspan="2"><span class="label label-important">{%=locale.fileupload.error%}</span> {%=locale.fileupload.errors[file.error] || file.error%}</td>
        {% } else { %}
            <td class="preview">{% if (file.thumbnail_url) { %}
                <a href="#" title="{%=file.name%}" rel="gallery" download="{%=file.name%}"><img src="{%=file.thumbnail_url%}"></a>
            {% } %}</td>
            <td class="name">
                <a href="#" title="{%=file.name%}" rel="{%=file.thumbnail_url&&'gallery'%}" download="{%=file.name%}">{%=file.name%}</a>
            </td>
            <td class="size"><span>{%=o.formatFileSize(file.size)%}</span></td>
            <td colspan="2"></td>
        {% } %}        
    </tr>
{% } %}
</script>

<!-- The localization script -->
<script src="<?php echo $imagePath; ?>js/uploadfile/locale.js"></script>
<!-- The main application script -->
<script src="<?php echo $imagePath; ?>js/uploadfile/main.js"></script>
		<?php
        }
	}
?>