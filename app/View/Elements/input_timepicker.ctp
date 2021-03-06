<?php
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
	$shortkey = substr($key, 5 );
	
	$nowDate = getdate();
	$hour = sprintf("%02d",$nowDate['hours']);
	$minute = sprintf("%02d",$nowDate['minutes']);
	
	$required = "";
	if(strpos(strtolower($validation), 'not_empty') !== FALSE && empty($display))
	{
		$required = 'REQUIRED';
	}	
?>
<script>
	$(document).ready(function(){
        <?php
            if(empty($readonly))
            {
                ?>
        // init time picker function
		$('input.tpicker.<?php echo $shortkey; ?>').timepicker({
		    <?php
                if(empty($required))
                {
                    ?>
            closeText: 'Clear', // Text to show for "close" button
            onClose: function () {
                if ($(window.event.srcElement).hasClass('ui-datepicker-close'))
                {
                    document.getElementById(this.id).value = '';
                }
            },
                    <?php
                }
            ?>
		});
                <?php
            }
        ?>
	});
</script>
<div class="control-group" <?php echo (empty($display)?'':'style="display:none"'); ?>>
	<label class="control-label" <?php echo (!empty($required)?'style="color: red;"':''); ?>>
        <?php echo string_unslug($shortkey); ?>
    </label>
	<div class="controls">
		<input readonly="readonly" <?php echo (empty($readonly)?'style="background:white;cursor:pointer;"':''); ?> <?php echo $required; ?> class="input-mini tpicker <?php echo $shortkey; ?>" type="text" value="<?php echo (isset($_POST['data'][$model][$counter]['value'])?$_POST['data'][$model][$counter]['value']:(empty($value)?(strpos(strtolower($validation), 'not_empty') !== FALSE?$hour.":".$minute:""):$value)); ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][value]"/>
		<?php
			if(!empty($p))
			{
				echo '<p class="help-block">'.$p.'</p>';
			}
		?>
	</div>
	<input type="hidden" value="<?php echo $key; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][key]"/>
	<input type="hidden" value="<?php echo $input_type; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][input_type]"/>
	<input type="hidden" value="<?php echo $validation; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][validation]"/>
	<input type="hidden" value="<?php echo $p ?? ''; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][instruction]"/>
</div>