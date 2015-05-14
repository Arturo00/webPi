﻿<%@ Page
    Title="Login"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="WebApplication2.Account.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="formLogin" runat="server">



        <!-- Mensaje of error -->
        <div class="row">
            <div id="divError" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <br />
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary" runat="server" class="alert alert-danger" ValidationGroup="Login" />

                <div id="divLabelError" class="alert alert-danger" runat="server" visible="false">
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <h3>
            <asp:Label ID="LabelLogin" runat="server" CssClass="text-left">Regístrese</asp:Label>
        </h3>



        <div class="form-horizontal">
            <!-- UserName -->
            <div class="form-group">
                <div class="input-group">
                    <asp:TextBox ID="TextBoxUserName" runat="server" CssClass="form-control textboxLogin" placeholder="Alias / Email" />
                </div>
            </div>

            <!-- Password -->
            <div class="form-group">
                <div class="input-group">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" CssClass="form-control textboxLogin" placeholder="Password" />
                </div>
            </div>

            <!-- REMEMEBER ME -->
            <asp:CheckBox ID="CheckBoxRememberMe" runat="server" CssClass="checkboxLogin" Text="Mantener la sesión iniciada." />
            <div class="clear"></div>
            <br />
        </div>

        <asp:Button ID="ButtonLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary"
            ValidationGroup="Login" />

        <div class="clear"></div>
        <br />

        <!-- Links Register && ForgotPass -->
        <asp:HyperLink ID="HyperLinkRegister" runat="server" CssClass="btn btn-link" NavigateUrl="/Account/Register.aspx">Registrarse</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLinkForgotPassword" runat="server" CssClass="btn btn-link" NavigateUrl="/RestablecerContrasenya">¿Has olvidado tu contraseña?</asp:HyperLink><br />

        <!-- Validator -->
        <div id="validator">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ValidationGroup="Login"
                ControlToValidate="TextBoxUserName" CssClass="field-validation-valid" ErrorMessage="El alias o email es obligatorio." />

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ValidationGroup="Login"
                ControlToValidate="TextBoxPassword" CssClass="field-validation-valid" ErrorMessage="El password es obligatorio." />
        </div>

    </form>
</asp:Content>
