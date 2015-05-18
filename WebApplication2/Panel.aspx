<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Panel.aspx.cs" Inherits="WebApplication2.Formulario_web13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="PanelPro" style="margin: 10%">
        <div class="jumbotron" style="width: auto; height: auto">
            <form id="formPanel" runat="server">
            <asp:Button ID="ButtonInsert" runat="server" Text="Insertar Piso" 
                CssClass="btn btn-primary btn-lg buttonRegister" onclick="ButtonInsert_Click" />
            <asp:Button ID="ButtonCuenta" runat="server" Text="Modificar Datos" 
                CssClass="btn btn-primary btn-lg buttonRegister" onclick="ButtonCuenta_Click" />
            <asp:Button ID="ButtonPisos" runat="server" Text="Mis Pisos" 
                CssClass="btn btn-primary btn-lg buttonRegister" onclick="ButtonPisos_Click" />
            <asp:Button ID="ButtonCerrar" runat="server" Text="Cerrar Sesión" 
                CssClass="btn btn-primary btn-lg buttonRegister" onclick="ButtonCerrar_Click" />
            </form>
        </div>
    </div>
</asp:Content>
