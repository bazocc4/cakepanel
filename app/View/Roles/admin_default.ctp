<?php
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
	$_SESSION['now'] = str_replace('&amp;','&',htmlentities($_SERVER['REQUEST_URI']));
	$this->Html->addCrumb('Master', '#');
	$this->Html->addCrumb('Role', '/admin/master/roles');
?>
<script type="text/javascript">
	$("a#master").addClass("active");
</script>
<div class="inner-header">
	<div id="child-menu">
		<?php  echo $this->Html->link('Add Role',array('controller'=>'master', 'action'=>'roles','add'),array('class'=>'btn btn-primary fr right-btn')); ?>
		<div class="btn-group fr <?php echo ($user['role_id'] > 1?'hide':''); ?>">
			<?php echo $this->Html->link('Databases',array('controller'=>'master', 'action'=>'types'), array('class'=>'btn')); ?>			
			<?php echo $this->Html->link('Roles',array('controller'=>'master', 'action'=>'roles'), array('class'=>'btn active')); ?>
		</div>
	</div>		
	<div class="title">
		<h2><?php echo ($user['role_id'] > 1?$totalList-1:$totalList).' ROLES'; ?></h2>
		<p class="title-description">All web access priviledges arranged by roles.</p>
	</div>
</div>		
<div class="inner-content">
	<table id="myTableList" class="list" style="cursor: default;">
		<tr>
			<th>NAME</th>
			<th></th>
		</tr>
		
		<?php		
			foreach ($myList as $value):
				if($user['Role']['id'] == 1)
				{
		?>	
		<tr>
			<td>
				<h5><?php echo $this->Html->link($value['Role']['name'],array('controller'=>'master' , 'action'=>'roles' ,'edit',$value['Role']['id'])); ?></h5>
				<p>
					<?php
						if(!empty($value['Role']['description'])) 
						{
							echo substr(strip_tags($value['Role']['description']),0,100);
						}
						echo "...";
					?>
				</p>
			</td>
			<td>						
				<?php
					if($value['Role']['id'] > 2)
					{
						?>
						<a href="javascript:void(0)" onclick="show_confirm('Are you sure want to delete <?php echo $value['Role']['name']; ?> ?','roles/delete/<?php echo $value['Role']['id']; ?>')" class="btn btn-danger"><i class="icon-trash icon-white"></i></a>
						<?php
					}
				?>
			</td>
		</tr>
		
		<?php
		}
		else if($user['Role']['id'] > 1 && $value['Role']['id'] != 1)
		{
			?>	
			<tr>
				<td>
					<h5><?php echo $this->Html->link($value['Role']['name'],array('controller'=>'master' , 'action'=>'roles' ,'edit',$value['Role']['id'])); ?></h5>
					<p>
						<?php
							if(!empty($value['Role']['description'])) 
							{
								echo substr(strip_tags($value['Role']['description']),0,100);
							}
							echo "...";
						?>
					</p>
				</td>
				<td>						
					<?php
						if($value['Role']['id'] > 2)
						{
							?>
							<a href="javascript:void(0)" onclick="show_confirm('Are you sure want to delete <?php echo $value['Role']['name']; ?> ?','roles/delete/<?php echo $value['Role']['id']; ?>')" class="btn btn-danger"><i class="icon-trash icon-white"></i></a>
							<?php
						}
					?>
				</td>
			</tr>
			
			<?php
		}
			endforeach;
		
		?>
	</table>
</div>