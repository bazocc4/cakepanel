<?php
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
	$this->Html->addCrumb($myType['Type']['name'], '/admin/entries/'.$myType['Type']['slug']);
	if(!empty($myEntry))
	{
		$this->Html->addCrumb($myEntry['Entry']['title'], '/admin/entries/'.$myType['Type']['slug'].'/'.$myEntry['Entry']['slug'].($myType['Type']['slug']!=$myChildType['Type']['slug']?'?type='.$myChildType['Type']['slug']:''));
	}
?>
<script type="text/javascript">
	$(document).ready(function(){
		var orderFlag = '';
		switch('<?php echo $_SESSION['order_by'] ?? ''; ?>')
		{
            case '': // empty var ...
                orderFlag = 'by_order';
				break;
			case 'title DESC':
				orderFlag = 'z_to_a';
				break;
			case 'title ASC':
				orderFlag = 'a_to_z';
				break;
			case 'created DESC':
				orderFlag = 'latest_first';
				break;
			case 'created ASC':
				orderFlag = 'oldest_first';
				break;
		}
		if(orderFlag.length > 0)
        {
            $('a[alt='+orderFlag+'].order_by').html(string_unslug(orderFlag)+' <i class="icon-ok"></i>');
        }
		
		if("<?php echo (empty($popup)?'kosong':'berisi'); ?>"=="kosong")
		{
			$("a#<?php echo $myType['Type']['slug']; ?>").addClass("active");
		}
        
        // trigger search function !!
		$('input#searchMe').keyup(function(e){
            var code = e.keyCode || e.which;
            if(code == 13) { //Enter keycode
               $('a.searchMeLink').click();
            }
		});

		// create margin-bottom !!
		$('div.inner-header.row-fluid > div:last > *').css('margin-bottom' , '10px');

		$('#attach-checked-data').click(function(e){
			if(!$(this).hasClass('disabled'))
			{
                var targetID = $('input#query-alias').val();
                
                // hide all tr first before appendTo tbody ...
                $('div#checked-row tr').addClass('hide').appendTo('table#myTableList tbody');
                
				$('input.check-record:not(:visible)').each(function(i,el){
                    // add new browse ...
                    if($('input#'+targetID+ $('input#query-stream').val() ).length == 0)
                    {
                        $('div.'+targetID+'-group').closest('div.control-group').find('a.add-raw').click();
                        // renew #query-stream NOW ...
                        $('input#query-stream').val( $.fn.urlParam('stream', $('div.'+targetID+'-detail:last a.get-from-table').attr('href') ) );
                    }
                    
                    // trigger TR row click ...
                    $(this).closest('tr').trigger('click');
                    
                    // preparing for next #query-stream ...
                    var $next_detail = $("input#"+targetID+ $('input#query-stream').val() ).closest('div.'+targetID+'-detail').next();
                    $('input#query-stream').val( $next_detail.length ? $.fn.urlParam('stream', $next_detail.find('a.get-from-table').attr('href') ) : '' );
				});
				$.colorbox.close();
			}
			else
			{
				alert('Please check at least one item to attach first !');
				$('input#check-all').focus();
			}
		});
	});
</script>

<!-- save id of entries that had already checked -->
<input type="hidden" id="checked-data" value=",">
<!-- used as jQuery colorbox checker bait (admin.js) -->
<a class="popup-image hide" href="#"></a>

<div class="inner-header <?php echo (empty($popup)?'':'layout-header-popup'); ?> row-fluid">
	<div class="span5">
		<div class="title">
			<h2><?php echo (empty($myEntry)?$myType['Type']['name']:$myEntry['Entry']['title'].' - '.$myChildType['Type']['name']); ?></h2>
			<?php
				echo '<p class="title-description">'.($myChildType['Type']['description'] ?? $myType['Type']['description'] ?? '').'</p>';
				if($totalList > 0)
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
		<?php
			if(!($myType['Type']['slug'] == 'pages' && $user['role_id'] >= 2 || !empty($popup) || $staticRecordTemplate) && $add == 1)
			{
				echo $this->Html->link('Add '.(empty($myEntry)?$myType['Type']['name']:$myChildType['Type']['name']),array('action'=>$myType['Type']['slug'],(empty($myEntry)?'':$myEntry['Entry']['slug'].'/').'add','?'=>$extensionPaging ),array('class'=>'btn btn-primary fr right-btn get-started'));
			}
		?>
		<div class="btn-group">
			<button class="btn" data-toggle="dropdown"><i class="icon-arrow-down"></i><i class="icon-arrow-up"></i></button>
			<a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span>&nbsp;</a>
			<ul class="dropdown-menu">
				<?php
					echo '<li>';
					echo $this->Html->link("By Order",array("action"=>$myType['Type']['slug'].(empty($myEntry)?'':'/'.$myEntry['Entry']['slug']),'index',$paging,'?'=>$extensionPaging) , array("class"=>"ajax_mypage order_by" , "alt"=>"by_order"));
					echo '</li>';
					
					// sort by Title !!
					echo '<li>';
					echo $this->Html->link("A To Z",array("action"=>$myType['Type']['slug'].(empty($myEntry)?'':'/'.$myEntry['Entry']['slug']),'index',$paging,'?'=>$extensionPaging) , array("class"=>"ajax_mypage order_by" , "alt"=>"a_to_z"));
					echo '</li>';
					echo '<li>';
					echo $this->Html->link("Z To A",array("action"=>$myType['Type']['slug'].(empty($myEntry)?'':'/'.$myEntry['Entry']['slug']),'index',$paging,'?'=>$extensionPaging) , array("class"=>"ajax_mypage order_by" , "alt"=>"z_to_a"));
					echo '</li>';
					
					// sort by Date !!
					echo '<li>';
					echo $this->Html->link("Latest First",array("action"=>$myType['Type']['slug'].(empty($myEntry)?'':'/'.$myEntry['Entry']['slug']),'index',$paging,'?'=>$extensionPaging) , array("class"=>"ajax_mypage order_by" , "alt"=>"latest_first"));
					echo '</li>';
					echo '<li>';
					echo $this->Html->link("Oldest First",array("action"=>$myType['Type']['slug'].(empty($myEntry)?'':'/'.$myEntry['Entry']['slug']),'index',$paging,'?'=>$extensionPaging) , array("class"=>"ajax_mypage order_by" , "alt"=>"oldest_first"));
					echo '</li>';
				?>
			</ul>
		</div>
		<?php
            if( $multi_language && empty($popup) )
			{
				?>
		<div class="btn-group lang-selector" style="margin-right: 10px;">
			<a id="lang_identifier" class="btn" data-toggle="dropdown" href="#"><?php echo (empty($this->request->query['lang'])?substr($mySetting['language'][0], 0,2):strtoupper($this->request->query['lang'])); ?></a>
			<a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span>&nbsp;</a>
			<ul class="dropdown-menu">
			<?php
				$extensionLang = $extensionPaging;
				foreach ($mySetting['language'] as $key => $value) 
				{
					$this_lang = strtolower(substr($value, 0,2));
					if(empty($myEntry) || !empty($myEntry) && !empty($parent_language[$this_lang]))
					{
						$extensionLang['lang'] = $this_lang;
						echo '<li>';
						echo $this->Html->link($value,array("action"=>$myType['Type']['slug'].(empty($myEntry)?'':'/'.$parent_language[$this_lang]),'index','1','?'=>$extensionLang) , array("class"=>"ajax_mypage langLink"));
						echo '</li>';
					}
				}					
			?>
			</ul>
		</div>		
				<?php
			}
		?>
		<div class="input-prepend" style="margin-right: 10px; margin-left: 10px;">
			<span class="add-on" style="margin-right: 3px; margin-top : 9px;">
				<?php
					echo $this->Html->link("<i class='icon-search'></i>",array("action"=>$myType['Type']['slug'].(empty($myEntry)?'':'/'.$myEntry['Entry']['slug']),'index','1','?'=>$extensionPaging) , array("class"=>"ajax_mypage searchMeLink","escape"=>false));
				?>
			</span>
			<input style="width: 160px;" id="searchMe" class="span2" type="text" placeholder="search item here...">
		</div>

		<?php
            if(!empty($popup))
            {
                if(!empty($stream))
                {
                    ?>
        <div style="margin:0 !important" class="clear"></div>
		<button id="attach-checked-data" class="btn btn-primary right-btn fr disabled">Attach checked data</button>
		<input type="hidden" id="query-stream" value="<?php echo $stream; ?>">
        
        <!-- save "tr" element of entries that had already checked -->
        <div class="hide" id="checked-row"></div>
                    <?php
                }
                
                ?>
        <input type="hidden" id="query-alias" value="<?php echo ( empty($alias) ? (empty($myEntry)?$myType['Type']['slug']:$myChildType['Type']['slug']) : $alias ); ?>">
                <?php
            }
        ?>
	</div>
</div>