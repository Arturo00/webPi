<?php

define('EMAIL_FOR_REPORTS', '');
define('RECAPTCHA_PRIVATE_KEY', '6Lf6tAYTAAAAAOyRUlzC8d0RGrQ6HtGyOxId0jZF');
define('FINISH_URI', 'http://');
define('FINISH_ACTION', 'message');
define('FINISH_MESSAGE', 'Bienvenido a UniFlat!');
define('UPLOAD_ALLOWED_FILE_TYPES', 'doc, docx, xls, csv, txt, rtf, html, zip, jpg, jpeg, png, gif');

define('_DIR_', str_replace('\\', '/', dirname(__FILE__)) . '/');
require_once _DIR_ . '/handler.php';

?>

<?php if (frmd_message()): ?>
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-metro-cyan.css" type="text/css" />
<span class="alert alert-success"><?php echo FINISH_MESSAGE; ?></span>
<?php else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="<?php echo dirname($form_path); ?>/formoid-metro-cyan.css" type="text/css" />
<script type="text/javascript" src="<?php echo dirname($form_path); ?>/jquery.min.js"></script>
<form class="formoid-metro-cyan" style="background-color:#ffffff;font-size:14px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;color:#666666;max-width:480px;min-width:150px" method="post"><div class="title"><h2>Logueate</h2></div>
	<div class="element-input<?php frmd_add_class("input"); ?>"><label class="title">Email</label><input class="large" type="text" name="input" /></div>
	<div class="element-password<?php frmd_add_class("password"); ?>"><label class="title">Contraseña</label><input class="large" type="password" name="password" value="" /></div>
	<div class="element-recaptcha<?php frmd_add_class("captcha"); ?>" title="captcha"><label class="title">captcha</label><script type="text/javascript">var RecaptchaOptions = {theme : "clean"};</script>
<script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k=6Lf6tAYTAAAAAMFEiy_b0o2UDlP8rnuRjjeLU8LO&theme=clean"></script>
<noscript><iframe src="http://www.google.com/recaptcha/api/noscript?k=6Lf6tAYTAAAAAMFEiy_b0o2UDlP8rnuRjjeLU8LO&hl=en" height="300" width="500" frameborder="0"></iframe></br>
<textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea><input type="hidden" name="recaptcha_response_field" value="manual_challenge"></noscript>
<script type="text/javascript">if (/#invalidcaptcha$/.test(window.location)) (document.getElementById("recaptcha_widget_div")).className += " error"</script></div>
	<div class="element-checkbox<?php frmd_add_class("checkbox"); ?>"><label class="title"></label>		<div class="column column1"><label><input type="checkbox" name="checkbox[]" value="Recuerdame"/ ><span>Recuerdame</span></label></div><span class="clearfix"></span>
</div>
<div class="submit"><input type="submit" value="Log in"/></div></form><script type="text/javascript" src="<?php echo dirname($form_path); ?>/formoid-metro-cyan.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>