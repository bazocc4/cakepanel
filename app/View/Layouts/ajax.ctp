<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */
?>
<?php
    echo $this->fetch('content');
    if(!empty($this->request->params['admin']))
    {
        ?>
<script type="text/javascript">
    $(document).ready(function(){
        // initialize bootstrap tooltip !!
        if( $.isFunction($.fn.tooltip) )
        {
            $('[data-toggle=tooltip]').not('[data-original-title]').tooltip({
                container: ($('#cboxContent').length>0&&$('#cboxContent').is(':visible')?'#cboxContent':'body'),
                html: true,
            }).each(function(){
                $(this).attr('title' , $(this).attr('alt') );
            });
        }
    });
</script>        
        <?php
    }
?>
