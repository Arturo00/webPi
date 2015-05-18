<%@ Page
    Title="AccountPanel"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="AccountPanel.aspx.cs"
    Inherits="WebApplication2.Account.AccountPanel" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="formAccountPanel" runat="server">

        <!-- Mensaje of error -->
        <div class="row">
            <div id="divError" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="alert alert-danger" ValidationGroup="AccountPanel" />

                <div id="divLabelError" class="alert alert-danger" runat="server" visible="false">
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </div>
            </div>
        </div>


        <!-- Título - Panel de usuario -->
        <h3>
            <asp:Label ID="LabelAccountPanel" runat="server" CssClass="text-left">Panel de usuario</asp:Label>
        </h3>

        <div class="clear"></div>
        <br />

        <div class="form-horizontal">
            <!-- Name -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelName" runat="server" CssClass="control-label bold">Nombre: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- LastName -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelLastName" runat="server" CssClass="control-label bold">Apellidos: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxLastName" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>
       

            <!-- UserName -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelUserName" runat="server" CssClass="control-label bold">Alias: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxUserName" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- Phone -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelPhone" runat="server" CssClass="control-label bold">Teléfono: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxPhone" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

     

            <!-- COD.POSTAL -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelCodPos" runat="server" CssClass="control-label bold">Código Postal: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxCodPos" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- Ciudad o municipio -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelCity" runat="server" CssClass="control-label bold">Ciudad o municipio: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxCity" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- Provincia -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelProvince" runat="server" CssClass="control-label bold">Provincia: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxProvince" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>





            <asp:Button ID="ButtonModify" runat="server" Text="Modificar" CssClass="btn btn-primary btn-lg buttonRegister"
                ValidationGroup="AccountPanel" onclick="ButtonModify_Click" />
            <div class="clear"></div>
            <br />
        </div>

        <!-- Validator -->
        <div id="validator" class="hide">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxName" CssClass="field-validation-valid" ErrorMessage="El nombre es obligatorio." />

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxLastName" CssClass="field-validation-valid" ErrorMessage="Los apellidos son obligatorios." />

  

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxUserName" CssClass="field-validation-valid" ErrorMessage="El alias de usuario es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorUserName" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxUserName" CssClass="field-validation-valid" ErrorMessage="El alias solo puede contener letras o números. No admite ñ ni acentos."
                ValidationExpression="^[A-Za-z0-9]*$"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidatorUserName" runat="server" CssClass="field-validation-valid"
                ControlToValidate="TextBoxUserName" ErrorMessage="El usuario ya existe, inserte otro usuario valido"></asp:CustomValidator>

            <!-- Validador TLF -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxPhone" CssClass="field-validation-valid" ErrorMessage="El teléfono es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxPhone" CssClass="field-validation-valid" ErrorMessage="El teléfono debe contener almenos 9 cifras"
                ValidationExpression="^[0-9]{9,9}$"></asp:RegularExpressionValidator>

          

            <!-- Validador Cod.Pos -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxCodPos" CssClass="field-validation-valid" ErrorMessage="El código postal es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxCodPos" CssClass="field-validation-valid" ErrorMessage="El código postal está restringido a 9 cifras"
                ValidationExpression="^[0-9]{0,9}$"></asp:RegularExpressionValidator>

            <!-- Validador Ciudad/Municipio -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxCity" CssClass="field-validation-valid" ErrorMessage="Ciudad o municipio obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCity" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxCity" CssClass="field-validation-valid" ErrorMessage="La ciudad o municipio solo puede contener letras."
                ValidationExpression="^[A-Za-zñ]*$"></asp:RegularExpressionValidator>

            <!-- Validador Provincia -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorProvince" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxProvince" CssClass="field-validation-valid" ErrorMessage="Provincia obligatoria." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorProvince" runat="server" ValidationGroup="AccountPanel"
                ControlToValidate="TextBoxProvince" CssClass="field-validation-valid" ErrorMessage="La provincia solo puede contener letras."
                ValidationExpression="^[A-Za-zñ]*$"></asp:RegularExpressionValidator>


         
        </div>
        <!-- /Validator -->

    </form>
</asp:Content>
