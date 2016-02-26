<script src='https://www.google.com/recaptcha/api.js'></script>
<?php
	$this->Get->create($data);
	if(is_array($data)) extract($data , EXTR_SKIP);
?>

<!-- 
html here ...
 -->
<div class="g-recaptcha center-block" data-sitekey="6LfKQBkTAAAAADjqRH2tGuaNHobpjmZ3EVGRqWzV" style="width: 304px;"></div> 

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript">
    $(document).ready(function(){
        <?php if(isset($_POST['submitcontact'])): ?>
            var endnote = '\n\nbest regards,\n<?php echo addslashes(html_entity_decode($mySetting['title'], ENT_COMPAT, 'UTF-8')); ?>';
            <?php
                if($contact['success'] == 1)
                {
                    ?>
                alert('Thank you for your message.\nWe will evaluate and contact back to you soon.'+endnote);
                    <?php
                }
                else
                {
                    if(!empty($recaptcha_error))
                    {
                        ?>
                alert('Invalid reCAPTCHA challenge (<?php echo $recaptcha_error; ?>)\nPlease try again.');
                        <?php
                    }
                    else if($contact['success'] == -2)
                    {
                        ?>
                alert('Failed to connect to mailserver.\nPlease check your connection first.');
                        <?php
                    }
                    else
                    {
                        ?>
                alert('Send Message Failed.\nPlease try again.');
                        <?php
                    }
                    ?>
//                $('a[href=#contact-area]')[0].click(); // focus to contact area...
                    <?php
                }
            ?>
        <?php endif; ?>
    });
</script>