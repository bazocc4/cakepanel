<?php
	if(is_array($data)) extract($data , EXTR_SKIP);
	$shortkey = substr($key, 5 );
	
	if(strpos(strtolower($validation), 'browse_module') !== FALSE)
	{
		$sqldata = $this->Get->list_entry(array(
			'type' => get_slug($shortkey),
			'orderField' => 'title',
			'orderDirection' => 'ASC',
			'raw' => 1
		));
		
		$list = array();
		foreach ($sqldata['myList'] as $sqlkey => $sqlvalue) 
		{
			$list[$sqlkey]['id'] = $list[$sqlkey]['name'] = $sqlvalue['Entry']['title'];
		}
	}
?>
<script>
	$(document).ready(function(){
		$('input[type=checkbox].checkall').change(function(){
			$(this).closest('div.controls.checkbox').find('input[type=checkbox]').attr('checked' , $(this).is(':checked'));
		});

		$('input[type=checkbox].view').change(function(){
			var val = $(this).attr('id').split('_');
			$('#'+val[0]+'_add').removeAttr('checked');
			$('#'+val[0]+'_edit').removeAttr('checked');
			$('#'+val[0]+'_delete').removeAttr('checked');
		});

		$('input[type=checkbox].not_view').change(function(){
			var val = $(this).attr('id').split('_');
			$('#'+val[0]+'_view').attr('checked',true);

			if($('#'+val[0]+'_add').is(':checked'))
			{
				$('#'+val[0]+'_edit').attr('checked',true);
				$('#'+val[0]+'_delete').attr('checked',true);
			}
			if($('#'+val[0]+'_delete').is(':checked'))
			{
				$('#'+val[0]+'_add').attr('checked',true);
				$('#'+val[0]+'_edit').attr('checked',true);
			}
		});
	});
</script>
<div class="control-group" <?php echo (empty($display)?'':'style="display:none"'); ?>>            
	<label class="control-label">
		<?php
			echo string_unslug(substr($key, 5 ));
			if(strpos(strtolower($validation), 'not_empty') !== FALSE)
			{
				echo '*';
			} 
		?>
	</label>
	<div class="controls checkbox">
		<input id="checkall" type="checkbox" class="checkall"><label for="checkall"><strong>&laquo; Check All &raquo;</strong></label>
		<table class="table table-striped">
			<thead>
				<tr class="row">
					<th class="col-sm-3">Module Name</th>
					<th class="col-sm-3" style="text-align: center;">View</th>
					<th class="col-sm-3" style="text-align: center;">Add</th>
					<th class="col-sm-3" style="text-align: center;">Edit</th>
					<th class="col-sm-3" style="text-align: center;">Delete</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$value = explode("|", $value);
				foreach ($list as $key_list => $value_list) 
				{	
					$i++;
					if($i == 1)
					{
						$c++;
						foreach ($modul_cat as $key_cat => $value_cat) 
						{

							if($value_cat['count'] == $c)
							{
								echo '<tr class="row"><td class="col-sm-3" colspan="5"><b>'.strtoupper($value_cat['name']).'</b></td></tr>';
							}
						}
						
						echo '<tr class="row">';
						echo '<td class="col-sm-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$value_list['name'].'</td>';
					}
					$existed = 0;
					foreach ($value as $key_val => $value_val) 
					{
						if($value_list['id'] == $value_val)
						{
							$existed = 1;
							break;
						}
					}

					echo '<td class="col-sm-3" style="text-align: center;"><input id="'.$value_list['id'].'" class="'.($i==1?'view':'not_view').'" '.($existed==0?'':'CHECKED').' value="'.$value_list['id'].'" type="checkbox" name="data['.$model.']['.$counter.'][value]['.$value_list['id'].']" style="float: none;margin: 0;" /></td>';


					if($i == 4)
					{
						echo '</tr>';
						$i = 0;
					}

				}

				?>
			</tbody>
		</table>
	</div>
	<input type="hidden" value="<?php echo $key; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][key]"/>
	<input type="hidden" value="<?php echo $optionlist; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][optionlist]"/>	
	<input type="hidden" value="<?php echo $input_type; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][input_type]"/>
	<input type="hidden" value="<?php echo $validation; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][validation]"/>
	<input type="hidden" value="<?php echo $p; ?>" name="data[<?php echo $model; ?>][<?php echo $counter; ?>][instruction]"/>
</div>