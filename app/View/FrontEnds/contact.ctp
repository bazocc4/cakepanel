<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<?php
	$this->Get->create($data);
	if(isset($data) && is_array($data)) extract($data , EXTR_SKIP);
?>

<!-- 
html here ...
 -->
<a class="smooth-scrolling" href="#contact-form" style="display:none;"></a>
<form id="contact-form" action="#" method="POST" role="form" enctype="multipart/form-data" accept-charset="utf-8">
    <button type="submit">Submit (Invisible reCAPTCHA)</button>
    <button class="g-recaptcha" data-sitekey="6LeVtS0UAAAAALwOXLz-RjeUrSzrYSWEtthUbhDa" data-callback="onSubmit" style="display:none;"></button>
    <br/>
</form>

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript">
    function onSubmit(token) {
        $('#contact-form').trigger('submit', ['verified']);
    }
    
    $(document).ready(function(){
        $('#contact-form').submit(function(e, verified){
            if(verified == null)
            {
                e.preventDefault();
                $(this).find('.g-recaptcha')[0].click();
            }
        }).find(':input:not(textarea)').on('keyup keypress', function(e) {
          var keyCode = e.keyCode || e.which;
          if (keyCode === 13) { 
            e.preventDefault();
          }
        });
        
        <?php if(!empty($_POST['emailcontact'])): ?>
            var endnote = '\n\nbest regards,\n<?php echo addslashes(html_entity_decode($mySetting['title'], ENT_COMPAT, 'UTF-8')); ?>';
            <?php
                if($mail_response['success'] == 1)
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
                    else if($mail_response['success'] == -2)
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
                // focus to contact area...
                $(window).load(function(){
                    if( $('a[href=#contact-form]').length )
                    {
                        $('a[href=#contact-form]')[0].click();
                    }
                });
                    <?php
                }
            ?>
        <?php endif; ?>
    });
</script>