<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="ModuloRegister" style="display: inline-flex; width: 100%; margin-top: 4%; margin-left: 20%; padding: 2%">
    <div class="jumbotron" 
        style="margin-top: 20px !important; width:58%; height: 450px;">
        <form class="form-signin">
                <h2 class="form-signin-heading" 
                    style="margin-top:0px;font-size:2.5em; width: 762px;">Registrate</h2>
                <input id="Nombre" class="form-control" placeholder="Nombre " required="" autofocus="" type="email">
                 <input id="Apellidos" class="form-control" placeholder="Apellidos " required="" autofocus="" type="email">
                  <input id="Email" class="form-control" placeholder="Email " required="" autofocus="" type="email">
                   <input id="Provincia" class="form-control" placeholder="Provincia " required="" autofocus="" type="email">
                    <input id="Ciudad" class="form-control" placeholder="Ciudad " required="" autofocus="" type="email">
                     <input id="Teléfono" class="form-control" placeholder="Teléfono " required="" autofocus="" type="email">
                      <input id="Codigo postal" class="form-control" placeholder="Código postal " required="" autofocus="" type="email">

                <input id="inputPassword" class="form-control" placeholder="Contraseña" required="" type="password" style="margin-top:10px; margin-bottom: 2%">
                <button class="btn btn-lg btn-primary btn-block" type="submit">Registrame</button>
            </form>
        </div>
</div>
</asp:Content>
