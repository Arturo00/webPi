<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <!-- Example row of columns -->
        <a name="about"></a>
        <div class="row">
            <br />
            <br />
            <br />
            <div class="col-md-12">
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="#">
                            <img class="media-object" src="Images/uniflat2.png" alt="logo">
                        </a>
                    </div>

                    <div class="media-body media-middle">
                        <h2>Conoce UNIFLAT!</h2>
                        <p>
                            Con el inicio año tras año del curso académico, los universitarios que migran a Alicante para iniciar su carrera
                         o continuarla se encuentran con la misma problemática, encontrar un piso para la temporada universitaria.
                         Nosotros te ayudamos en el proceso, Uniflat te servirá para que en pocos clicks consigas lo que buscas, un piso.
                         Además para aquellos que viven en el lugar y necesitan de ingresos nosotros también te proporcionamos poder
                         añadir tu vivienda a la lista de ofertas de alquiler.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <a name="contact"></a>
        <hr>

        <div class="row">
            <div class="col-md-6">
                <h2>Unete a DY!</h2>
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="https://twitter.com/uniflat" target="_blank">
                            <img class="media-object" src="Images/twitter.png" alt="Twitter">
                        </a>
                    </div>
                    <div class="media-body media-middle">
                        <a href="https://twitter.com/DressYourself_" target="_blank">
                            <h4 class="media-heading">https://twitter.com/uniflat</h4>
                        </a>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="https://www.facebook.com/uniflat" target="_blank">
                            <img class="media-object" src="Images/facebook.png" alt="Facebook">
                        </a>
                    </div>
                    <div class="media-body media-middle">
                        <a href="https://www.facebook.com/uniflat" target="_blank">
                            <h4 class="media-heading">https://www.facebook.com/uniflat</h4>
                        </a>
                    </div>
                </div>
                <div class="media">
                    <div class="media-left media-middle">
                        <a href="mailto:uniflat@book.com" target="_top">
                            <img class="media-object" src="Images/email.png" alt="Email">
                        </a>
                    </div>
                    <div class="media-body media-middle">
                        <a href="mailto:uniflat@book.com" target="_top">
                            <h4 class="media-heading">uniflat@book.com</h4>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h2>Contáctanos</h2>
                <form>
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input type="text" class="form-control" id="name" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Introduce email">
                    </div>
                    <div class="form-group">
                        <label for="subject">Asunto</label>
                        <input type="text" class="form-control" id="subject" placeholder="Asunto">
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" rows="5" placeholder="¿Qué tiene que decirnos?"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar consulta</button>
                </form>
            </div>
        </div>

        <hr>
    </div>

</asp:Content>
