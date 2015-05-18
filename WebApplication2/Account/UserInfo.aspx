<%@ Page
    Title="UserInfo"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="UserInfo.aspx.cs"
    Inherits="WebApplication2.Account.UserInfo" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="formUserInfo" runat="server">

        <br />
        <br />
        <br />

        <!-- Título -->
        <h3>
            <asp:Label ID="LabelUserInfo" runat="server" CssClass="text-left">Información de usuario</asp:Label>
        </h3>

        <br />

        <!-- Name -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelName" runat="server">Nombre: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                    <asp:Label ID="LabelNameDB" runat="server">Nombre</asp:Label>
                    </div>
                </div>
            </div>

        <!-- LastName -->
        <div class="form-group">
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <asp:Label ID="LabelLastName" runat="server">Apellidos: </asp:Label>
            </div>
            <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                <div class="input-group">
                <asp:Label ID="LabelLastNameDB" runat="server">Apellidos</asp:Label>
                </div>
            </div>
        </div>
        <!-- Email -->
        <div class="form-group">
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <asp:Label ID="LabelEmail" runat="server">Email: </asp:Label>
            </div>
            <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                <div class="input-group">
                <asp:Label ID="LabelEmailDB" runat="server">Email</asp:Label>
                </div>
            </div>
        </div>
        <!-- Phone -->
        <div class="form-group">
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <asp:Label ID="LabelPhone" runat="server">Teléfono: </asp:Label>
            </div>
            <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                <div class="input-group">
                <asp:Label ID="LabelPhoneDB" runat="server">Teléfono</asp:Label>
                </div>
            </div>
        </div>
        <!-- Score -->
        <div class="form-group">
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
            </div>
            <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                <div class="input-group">
                </div>
            </div>
        </div>


    </form>
</asp:Content>
