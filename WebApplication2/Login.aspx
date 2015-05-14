<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Formulario_web12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<html>
<head>
<div class = "lol" style = "margin: 5%">
	<meta charset="utf-8" />
	<title>Logueate - Formoid html form</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    </div>
</head>

<body class="blurBg-false" style="background-color:#EBEBEB">



<!-- Start Formoid form-->
<link rel="stylesheet" href="login_files/formoid1/formoid-metro-cyan.css" type="text/css" />
<script type="text/javascript" src="login_files/formoid1/jquery.min.js"></script>
<form class="formoid-metro-cyan" style="background-color:#ffffff;font-size:14px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;color:#666666;max-width:480px;min-width:150px" method="post"><div class="title"><h2>Logueate</h2></div>
	<div class="element-input"><label class="title">Email</label><input class="large" type="text" name="input" /></div>
	<div class="element-password"><label class="title">Contraseña</label><input class="large" type="password" name="password" value="" /></div>
	<div class="element-recaptcha" title="captcha"><label class="title">captcha</label><script type="text/javascript">	                                                                                       var RecaptchaOptions = { theme: "clean" };</script>
<script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k=6Lf6tAYTAAAAAMFEiy_b0o2UDlP8rnuRjjeLU8LO&theme=clean"></script>
<noscript><iframe src="http://www.google.com/recaptcha/api/noscript?k=6Lf6tAYTAAAAAMFEiy_b0o2UDlP8rnuRjjeLU8LO&hl=en" height="300" width="500" frameborder="0"></iframe></br>
<textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea><input type="hidden" name="recaptcha_response_field" value="manual_challenge"></noscript>
<script type="text/javascript">    if (/#invalidcaptcha$/.test(window.location)) (document.getElementById("recaptcha_widget_div")).className += " error"</script></div>
	<div class="element-checkbox"><label class="title"></label>		<div class="column column1"><label><input type="checkbox" name="checkbox[]" value="Recuerdame"/ ><span>Recuerdame</span></label></div><span class="clearfix"></span>
</div>
<div class="submit"><input type="submit" value="Log in"/></div></form><p class="frmd"><a href="http://formoid.com/v29.php">html form</a> Formoid.com 2.9</p><script type="text/javascript" src="login_files/formoid1/formoid-metro-cyan.js"></script>
<!-- Stop Formoid form-->



</body>
</html>

</asp:Content>