<?php
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
	$shortkey = substr($key, 5 );	

    $browse_slug = get_slug($shortkey);
    $browse_alias = $browse_slug; // use it ONLY IF need alias target for browse model ...

    $metaDetails = array();
    $metaslug = (isset($_POST['data'][$model][$counter]['value'])?$_POST['data'][$model][$counter]['value']:$value);
    if(!empty($metaslug))
    {
        $metaDetails = $this->Get->meta_details([
            'slug' => $metaslug,
            'entry_type' => $browse_slug,
        ]);
        
        // check language is matching or not !!
        if(!empty($lang) && !empty($metaDetails))
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
                    $metaslug = $metaDetails['Entry']['slug'];
                }
            }
        }
    }

	$required = "";
	if(strpos(strtolower($validation), 'not_empty') !== FALSE && empty($display))
	{
		$required = 'REQUIRED';
	}
?>
<script type="text/javascript">
    $(document).ready(function(){
        $('a#<?php echo $shortkey; ?>_view_detail').click(function(e){
            
            var nowval = $.trim($(this).closest('div.controls').find('input[type=hidden].<?php echo $shortkey; ?>').val());
            if(nowval.length > 0)
            {
                $(this).attr('href' , site+'admin/entries/<?php echo $browse_slug; ?>/edit/'+nowval);
            }
            else
            {
                e.preventDefault();
                alert('Please browse an item first!');
            }                
        });
    });
</script>
<div class="control-group" <?php echo (empty($display)?'':'style="display:none"'); ?>>            
	<label class="control-label" <?php echo (!empty($required)?'style="color: red;"':''); ?>>
        <?php echo string_unslug($shortkey); ?>
    </label>
	<div class="controls">
		<input <?php echo $required; ?> <?php echo 'id="'.$browse_alias.'"'; ?> class="targetID input-xlarge" placeholder="<?php echo $placeholder ?? ''; ?>" value="<?php echo (empty($metaDetails['EntryMeta']['name'])?($metaDetails['Entry']['title']??''):$metaDetails['EntryMeta']['name'].' ('.($metaDetails['Entry']['title']??'').')'); ?>" type="text" readonly="true"/>
        <?php
            $popupExtensions = array('popup'=>'init');
            if($browse_alias != $browse_slug)
            {
                $popupExtensions['alias'] = $browse_alias;
            }
        
            if(is_array($request_query??NULL))
            {
                $popupExtensions = array_merge($popupExtensions, $request_query);
            }
        
            echo $this->Html->link('Browse',array('controller'=>'entries','action'=>$browse_slug,'admin'=>true,'?'=>$popupExtensions),array('class'=>'btn btn-info get-from-table'));
        ?>
        <input class="<?php echo $shortkey; ?>" type="hidden" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][value]" value="<?php echo $metaslug; ?>"/>
        
        <?php if(empty($required)): ?>
            <a class="btn btn-danger removeID" href="javascript:void(0)">Clear</a>  
        <?php endif; ?>
        
        <a target="_blank" id="<?php echo $shortkey; ?>_view_detail" class="btn btn-primary" href="#">View Detail</a>  
		
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