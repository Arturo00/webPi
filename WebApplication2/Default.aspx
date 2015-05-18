<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Site1.master"
    CodeBehind="Default.aspx.cs"
    Inherits="WebApplication2.Default1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">

        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">DressYourself!</a>

            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Inicio</a></li>
                    <li><a href="#about">Conoce DY!</a></li>
                    <li><a href="#media">Media</a></li>
                    <li><a href="#contact">Contacto</a></li>
                </ul>
            </div>
            <!-- /.nav-collapse -->
        </div>
        <!-- /.container -->
        </nav>
    <!-- /.navbar -->
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="flex-container" style="margin: 10%; top: -62px; left: 2px;">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <img src="Images/carousel/casa.jpg" /></li>
                    <li>
                        <img src="Images/carousel/casa2.jpg" /></li>
                    <li>
                        <img src="Images/carousel/casa3.jpg" /></li>
                </ul>
                <ul class="flex-direction-nav">
                    <li>
                        <a class="prev" href="#"></a>
                    </li>
                    <li>
                        <a class="next" href="#"></a>
                    </li>
                </ul>
            </div>
        </div>


        <a name="media"></a>
        <hr>
        <div class="row">
            <div class="col-md-12">
                <h2>Media</h2>
            </div>
            <div class="col-md-4">
                <img class="img-center img-responsive img-circle" style="width: 200px; height: 200px;" src="Images/carousel/casa.jpg" alt="">
                <h2>Organiza <small>tu ropa</small></h2>
                <p>En UNIFLAT! podrás tener las <strong>casas</strong> que desees. Tendrás toda tu vivienda organizada a tu gusto. </p>
            </div>
            <div class="col-md-4">
                <img class="img-center img-responsive img-circle" style="width: 200px; height: 200px;" src="Images/carousel/casa2.jpg" alt="">
                <h2>Aprovecha <small>tu ropa</small></h2>
                <p>Mucha casa en tu propiedad, pero tú siempre viviendo en la misma. Gracias a las votaciones de tus casas, harás mejores publicaciones y sacaras provecho a cada vivienda.</p>
            </div>
            <div class="col-md-4">
                <img class="img-center img-responsive img-circle" style="width: 200px; height: 200px;" src="Images/carousel/casa3.jpg" alt="">
                <h2>Comparte <small>tu ropa</small></h2>
                <p>Podrás <strong>compartir</strong> tu casa con tus amigos. ¿Tienes quebraderos de cabeza para decidir dónde vivir? ¿No estas seguro de con qué ponerte para ese día tan especial? Comparte con tus amigos tus indecisiones para que puedan ayudarte a tomar la decisión correcta.</p>
            </div>
        </div>
        <!-- /.row -->

        <!-- /container -->

        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
        <!-- Bootstrap -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" charset="utf-8">
            $(window).load(function () {
                $('.flexslider').flexslider({
                    controlsContainer: '.flex-container'
                });
            });
        </script>

    </form>
</asp:Content>
