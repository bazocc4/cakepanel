<?php
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
	$shortkey = substr($key, 5 );
	$validation = strtolower($validation);
	
	$required = "";
	if(strpos($validation, 'not_empty') !== FALSE && empty($display))
	{
		$required = 'REQUIRED';
	}
	
	$detail_type = "text";
	if(strpos($validation, 'is_email') !== FALSE)
	{
		$detail_type = 'email';
        if(empty($inputsize))   $inputsize = 'input-large';
	}
	else if(strpos($validation, 'is_numeric') !== FALSE)
	{
		$detail_type = 'number';
        if(empty($inputsize))   $inputsize = 'input-medium';
	}
	else if(strpos($validation, 'is_url') !== FALSE)
	{
		$detail_type = 'url';
	}

	// add class title if the field is title !!
	$classtitle = "";
	if($model == 'Entry' && $counter == 0)
	{
		$classtitle = "Title";
	}

	// characters limitation !!
	$maxchar = 0;
	$posMaxLength = strpos($validation, 'max_length');
	if($posMaxLength !== FALSE)
	{
		$tempstart = $posMaxLength+11;
		$caripentung = strpos($validation, '|' , $posMaxLength);
		if($caripentung === FALSE)
		{
			$maxchar = substr($validation, $tempstart);
		}
		else
		{
			$maxchar = substr($validation, $tempstart , $caripentung - $tempstart );
		}
	}

	// set specific input class !!
	if(empty($inputsize))
	{
		$inputsize = 'input-xlarge';
	}
	
	if($shortkey == 'discount' || $shortkey == 'weight' || $shortkey == 'qty' || strpos($shortkey , 'stock') !== FALSE)
	{
		$inputsize = 'input-mini';
	}
	else if(strpos($shortkey, 'price') !== false)
	{
		$inputsize = 'input-small';
	}
?>
<div class="control-group" <?php echo (empty($display)?'':'style="display:none"'); ?>>            
	<label class="control-label" <?php echo (!empty($required)?'style="color: red;"':''); ?>>
        <?php echo string_unslug($shortkey); ?>
    </label>
	<div class="controls">
		<?php
            // header string !!
			if(strpos($shortkey, 'price') !== false)
			{
				echo 'Rp.';
			}
		?>
		<input <?php echo ($maxchar > 0?'maxlength="'.$maxchar.'"':''); ?> <?php echo ($detail_type=='number'?'step="any" min="0"':''); ?> <?php echo (!empty($readonly)?'readonly="true"':''); ?> <?php echo $required; ?> class="<?php echo $shortkey.' '.$inputsize.' '.$classtitle; ?>" type="<?php echo $detail_type; ?>" placeholder="<?php echo $placeholder ?? ''; ?>" value="<?php echo htmlspecialchars(isset($_POST['data'][$model][$counter]['value'])?$_POST['data'][$model][$counter]['value']:$value); ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][value]"/>
		<?php
            // footer string !!
			if($shortkey == 'discount')
			{
				echo '% OFF';
			}
			else if(strpos($shortkey, 'price') !== false)
			{
				echo ',-';
			}
			else if($shortkey == 'weight')
			{
				echo 'kg';
			}
			else if($shortkey == 'qty' || strpos($shortkey , 'stock') !== FALSE)
			{
				echo 'unit(s)';
			}
		?>
		<p class="help-block">
            <?php echo $p ?? ''; ?>
        </p>
	</div>
	<input type="hidden" value="<?php echo $key; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][key]"/>
	<input type="hidden" value="<?php echo $input_type; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][input_type]"/>
	<input type="hidden" value="<?php echo $validation; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][validation]"/>
	<input type="hidden" value="<?php echo $p ?? ''; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][instruction]"/>
</div>