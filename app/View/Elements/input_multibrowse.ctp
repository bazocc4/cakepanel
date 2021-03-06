<?php
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
	$shortkey = substr($key, 5 );
	$var_stream = $shortkey.'_stream';	
	
    $browse_slug = get_slug($shortkey);
    $browse_alias = $browse_slug; // use it ONLY IF need alias target for browse model ...
?>
<div class="control-group" <?php echo (empty($display)?'':'style="display:none"'); ?>>
	<label class="control-label" <?php echo (strpos(strtolower($validation), 'not_empty') !== FALSE?'style="color: red;"':''); ?>>
        <?php echo string_unslug($shortkey); ?>
    </label>
	<div class="controls <?php echo $browse_alias; ?>-group">
		<?php
            $raw_stream = 1;
            $popupExtensions = array('popup'=>'init');

            if($browse_alias != $browse_slug)
            {
                $popupExtensions['alias'] = $browse_alias;
            }

            if(is_array($request_query??NULL))
            {
                $popupExtensions = array_merge($popupExtensions, $request_query);
            }

			// Check data POST first !!
			if(!empty($_POST['data'][$model][$counter]['value']))
			{
				foreach ($_POST['data'][$model][$counter]['value'] as $metakey => $metavalue) 
				{
					if(!empty($metavalue))
					{
						echo '<div class="row-fluid '.$browse_alias.'-detail bottom-spacer">';					
						echo '<input REQUIRED id="'.$browse_alias.$raw_stream.'" class="input-xlarge" type="text" name="data['.$model.']['.$counter.'][temp][]" value="'.$_POST['data'][$model][$counter]['temp'][$metakey].'" readonly="true"/>';					
                        $popupExtensions['stream'] = $raw_stream;
						echo '&nbsp;'.$this->Html->link('Browse',array('controller'=>'entries','action'=>$browse_slug,'admin'=>true,'?'=>$popupExtensions),array('class'=>'btn btn-info get-from-table'));
	                    echo '<input class="'.$shortkey.'" type="hidden" name="data['.$model.']['.$counter.'][value][]" value="'.$metavalue.'"/>';
	                    echo '&nbsp;<a class="btn btn-danger del-raw" href="javascript:void(0)"><i class="icon-trash icon-white"></i></a>';					
						echo '</div>';
						
						$raw_stream++;
					}
				}
			}
			else if(!empty($value))
			{
				$metaslugs = explode('|', $value);
				foreach ($metaslugs as $metakey => $metavalue) 
				{
					$metaDetails = $this->Get->meta_details([
                        'slug' => $metavalue,
                        'entry_type' => $browse_slug,
                    ]);
					if(!empty($metaDetails))
					{
                        // check language is matching or not !!
                        if(!empty($lang))
                        {
                            $pecahlang = explode('-', $metaDetails['Entry']['lang_code']);
                            if($lang != $pecahlang[0])
                            {
                                $tempDetails = $this->Get->meta_details([
                                    'entry_type' => $browse_slug,
                                    'lang' => $lang.'-'.$pecahlang[1],
                                ]);
                                if(!empty($tempDetails))
                                {
                                    $metaDetails = $tempDetails;
                                }
                            }
                        }
                        
						echo '<div class="row-fluid '.$browse_alias.'-detail bottom-spacer">';
					   
                        $richvalue = '';
						if(!empty($metaDetails['EntryMeta']['name']))
						{
							$richvalue = $metaDetails['EntryMeta']['name'].' ('.$metaDetails['Entry']['title'].')';
						}
						else
						{
                            $richvalue = $metaDetails['Entry']['title'];
						}
                        
                        echo '<input REQUIRED id="'.$browse_alias.$raw_stream.'" class="input-xlarge" type="text" name="data['.$model.']['.$counter.'][temp][]" value="'.$richvalue.'" readonly="true"/>';
                        
                        $popupExtensions['stream'] = $raw_stream;            
						echo '&nbsp;'.$this->Html->link('Browse',array('controller'=>'entries','action'=>$browse_slug,'admin'=>true,'?'=>$popupExtensions),array('class'=>'btn btn-info get-from-table'));
	                    echo '<input class="'.$shortkey.'" type="hidden" name="data['.$model.']['.$counter.'][value][]" value="'.$metaDetails['Entry']['slug'].'"/>';
	                    echo '&nbsp;<a class="btn btn-danger del-raw" href="javascript:void(0)"><i class="icon-trash icon-white"></i></a>';
						
						echo '</div>';
						
						$raw_stream++;
					}
				}
			}
		?>
	</div>
    
	<div class="controls">
		<a href="javascript:void(0)" class="add-raw underline">Add a <?php echo str_replace('_', ' ', $shortkey); ?></a>
		<p class="help-block">
			Want to create new one? Click <?php echo $this->Html->link('here<img alt="External Icon" src="'.$imagePath.'img/external-icon.gif">',array('controller'=>'entries','action'=>$browse_slug.'/add'),array("onclick"=>"javascript:openRequestedSinglePopup(this.href); return false;","escape"=>false)); ?>.<br/>
	        <?php echo $p ?? ''; ?>
	    </p>
	</div>
	
	<input type="hidden" value="<?php echo $key; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][key]"/>
	<input type="hidden" value="<?php echo $input_type; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][input_type]"/>
	<input type="hidden" value="<?php echo $validation; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][validation]"/>
	<input type="hidden" value="<?php echo $p ?? ''; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][instruction]"/>
</div>

<?php
    // unset this var because later will be using javascript value !!
    unset($popupExtensions['stream']);
?>

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript">
// special counter variable ...    
var <?php echo $var_stream; ?> = <?php echo $raw_stream; ?>;

$(document).ready(function(){
    $('div.<?php echo $browse_alias; ?>-group').closest('div.control-group').find('a.add-raw').click(function(){
        var content = '<div class="row-fluid <?php echo $browse_alias; ?>-detail bottom-spacer">';            
        content += '<input REQUIRED id="<?php echo $browse_alias; ?>'+<?php echo $var_stream; ?>+'" class="input-xlarge" type="text" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][temp][]" readonly="true"/>';
        
        content += '&nbsp;<a class="btn btn-info get-from-table" href="'+linkpath+'admin/entries/<?php echo $browse_slug.get_more_extension($popupExtensions); ?>&stream='+<?php echo $var_stream; ?>+'">Browse</a>';            
        
        content += '<input class="<?php echo $shortkey; ?>" type="hidden" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][value][]" />';
        content += '&nbsp;<a class="btn btn-danger del-raw" href="javascript:void(0)"><i class="icon-trash icon-white"></i></a>';
        content += '</div>';

        $('div.<?php echo $browse_alias; ?>-group').append(content);
        <?php echo $var_stream; ?>++;
    });
    
    // if NO browse record displayed, then show it one !!
    <?php
        if($raw_stream == 1)
        {
            ?>
    $('div.<?php echo $browse_alias; ?>-group').closest('div.control-group').find('a.add-raw').click();
            <?php
        }
    ?>

    ($('#colorbox').length>0&&$('#colorbox').is(':visible')?$('#colorbox').children().last().children():$(document)).on("click",'div.<?php echo $browse_alias; ?>-group a.del-raw',function(e){
        $(this).closest('div.<?php echo $browse_alias; ?>-detail').animate({opacity : 0 , height : 0, marginBottom : 0},1000,function(){
            $(this).detach();
        });
    });
    
    // sortable multibrowse input ...
    $('div.<?php echo $browse_alias; ?>-group').css('cursor', 'move').sortable({ opacity: 0.6, cursor: 'move' });
});
</script>