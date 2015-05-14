<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Account.Register" %>

<%--Inherits="nitrocar._Default"--%>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">

        <!-- Mensaje of error -->
        <div class="row">
            <div id="divError" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary" runat="server" class="alert alert-danger" ValidationGroup="Register" />

                <div id="divLabelError" class="alert alert-danger" runat="server" visible="false">
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </div>
            </div>
        </div>
        <%--
        OKprivate string email = "asd";
        OKprivate string usuario = "asd";
        OKprivate string password = "asd";
        OKprivate string nombre = "asd";
        OKprivate string apellidos = "asd";
        OKprivate int telefono = -1;
        OKprivate int codpos = -1;
        OKprivate int sexo = -1;
        OKprivate string provincia = "asd";
        OKprivate string ciudad = "asd";
        --%>
        <h3>
            <asp:Label ID="LabelRegister" runat="server" CssClass="text-left">Regístrese</asp:Label>
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
            <!-- Email -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelEmail" runat="server" CssClass="control-label bold">Email: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" />
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

            <!-- Gender -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <br />
                    <asp:Label ID="LabelGender" runat="server" CssClass="control-label bold">Género: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:DropDownList ID="TextBoxGender" CssClass="form-control" runat="server" Style="width: 100%; padding: 5px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            <asp:ListItem Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Mujer"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Hombre"></asp:ListItem>
                        </asp:DropDownList>
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



            <!-- Password -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelPassword" runat="server" CssClass="control-label bold">Password: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- RepeatPassword -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelRepeatPassword" runat="server" CssClass="control-label bold">Repetir Password: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxRepeatPassword" runat="server" TextMode="Password" CssClass="form-control" />
                    </div>
                </div>
            </div>


            <asp:Button ID="ButtonRegister" runat="server" Text="Registrarse" CssClass="btn btn-primary btn-lg buttonRegister"
                ValidationGroup="Register" />
            <div class="clear"></div>
            <br />
        </div>

        <!-- Validator -->
        <div id="validator" class="hide">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxName" CssClass="field-validation-valid" ErrorMessage="El nombre es obligatorio." />

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxLastName" CssClass="field-validation-valid" ErrorMessage="Los apellidos son obligatorios." />

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxEmail" CssClass="field-validation-valid" ErrorMessage="El email es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxEmail" CssClass="field-validation-valid" ErrorMessage="El email no tiene formato correcto"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidatorEmail" runat="server" CssClass="field-validation-valid"
                ControlToValidate="TextBoxEmail" ErrorMessage="El email ya existe, inserte otro email valido"></asp:CustomValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxUserName" CssClass="field-validation-valid" ErrorMessage="El alias de usuario es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorUserName" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxUserName" CssClass="field-validation-valid" ErrorMessage="El alias solo puede contener letras o números. No admite ñ ni acentos."
                ValidationExpression="^[A-Za-z0-9]*$"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidatorUserName" runat="server" CssClass="field-validation-valid"
                ControlToValidate="TextBoxUserName" ErrorMessage="El usuario ya existe, inserte otro usuario valido"></asp:CustomValidator>

            <!-- Validador TLF -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxPhone" CssClass="field-validation-valid" ErrorMessage="El teléfono es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxPhone" CssClass="field-validation-valid" ErrorMessage="El teléfono debe contener almenos 9 cifras"
                ValidationExpression="^[0-9]{9,9}$"></asp:RegularExpressionValidator>

            <!-- Validador GENDER -->
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidatorGender" runat="server" InitialValue="" ValidationGroup="Register"
                ControlToValidate="TextBoxGender" CssClass="field-validation-valid" ErrorMessage="Genero obligatorio">
            </asp:RequiredFieldValidator>

            <!-- Validador Cod.Pos -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxCodPos" CssClass="field-validation-valid" ErrorMessage="El código postal es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxCodPos" CssClass="field-validation-valid" ErrorMessage="El código postal está restringido a 9 cifras"
                ValidationExpression="^[0-9]{0,9}$"></asp:RegularExpressionValidator>

            <!-- Validador Ciudad/Municipio -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxCity" CssClass="field-validation-valid" ErrorMessage="Ciudad o municipio obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCity" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxCity" CssClass="field-validation-valid" ErrorMessage="La ciudad o municipio solo puede contener letras."
                ValidationExpression="^[A-Za-zñ]*$"></asp:RegularExpressionValidator>

            <!-- Validador Provincia -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorProvince" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxProvince" CssClass="field-validation-valid" ErrorMessage="Provincia obligatoria." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorProvince" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxProvince" CssClass="field-validation-valid" ErrorMessage="La provincia solo puede contener letras."
                ValidationExpression="^[A-Za-zñ]*$"></asp:RegularExpressionValidator>


            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxPassword" CssClass="field-validation-valid" ErrorMessage="El password es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxPassword" CssClass="field-validation-valid" ErrorMessage="El password debe contener al menos 6 caracteres"
                ValidationExpression="^[\s\S]{6,}$"></asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRepeatPassword" runat="server" ValidationGroup="Register"
                ControlToValidate="TextBoxRepeatPassword" CssClass="field-validation-valid" ErrorMessage="Repetir password es obligatorio." />
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ValidationGroup="Register"
                ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxRepeatPassword"
                CssClass="field-validation-valid" ErrorMessage="Las contraseñas no coinciden." />

        </div>
        <!-- /Validator -->
    </form>
</asp:Content>
