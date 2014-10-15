<?php
	App::import('Vendor', 'recaptchalib');

	$this->Get->create($data);
	extract($data , EXTR_SKIP);
?>
<script type="text/javascript">
	var RecaptchaOptions = {
	    theme : 'white' // or "blackglass"
	};
</script>

<!-- 
html here ...
 -->

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript">
    $(document).ready(function(){
        <?php if(isset($_POST['submitcontact'])): ?>
            var endnote = '\n\nbest regards,\n<?php echo $mySetting['title']; ?>';
            
            <?php if($contact['success'] == 1): ?>
                alert('Thank you for your message.\nWe will evaluate and contact back to you soon.'+endnote);

            <?php elseif($contact['success'] == 0): ?>
                alert('Invalid CAPTCHA challenge (<?php echo $recaptcha_error; ?>)\nPlease try again.');

            <?php elseif($contact['success'] == -1): ?>
                alert('Send Message Failed.\nPlease try again.');

            <?php elseif($contact['success'] == -2): ?>
                alert('Failed to connect to mailserver.\nPlease check your connection first.');
            <?php endif; ?>
            
        <?php endif; ?>
    });
</script>