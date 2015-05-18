<%@ Page
    Title="InsertFlat"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="InsertFlat.aspx.cs"
    Inherits="WebApplication2.Account.InsertFlat" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript">
        $(document).ready(function () {

            $(function () {
                /*slideshow */
                $('.slideshow img:gt(0)').hide();
                setInterval(function () {
                    $('.slideshow :first-child').fadeOut()
                       .next('img').fadeIn()
                       .end().appendTo('.slideshow');
                },
                  4000);
            });
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="formInsertFlat" runat="server">

        <!-- Mensaje of error -->
        <div class="row">
            <div id="divError" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="alert alert-danger" ValidationGroup="InsertFlat" />

                <div id="divLabelError" class="alert alert-danger" runat="server" visible="false">
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </div>
            </div>
        </div>

        <!-- Título - Inserte su vivienda -->
        <h3>
            <asp:Label ID="LabelInsertFlat" runat="server" CssClass="text-left">Inserte su vivienda</asp:Label>
        </h3>


        <div class="clear"></div>
        <br />

        <div class="form-horizontal">


            <%--            <!-- Título del anuncio -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelTitle" runat="server" CssClass="control-label bold">Título del anuncio: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxTitle" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>--%>

            <!-- Descripción -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelDescription" runat="server" CssClass="control-label bold">Descripción del anuncio: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxDescription" runat="server"
                            CssClass="form-control" Height="300px"
                            TextMode="MultiLine" Width="300px" />
                    </div>
                </div>
            </div>
            <!-- Precio por persona -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelPrice" runat="server" CssClass="control-label bold">Precio de la vivienda(por persona): </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxPrice" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- Gente que cabe -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <br />
                    <asp:Label ID="LabelPeople" runat="server" CssClass="control-label bold">Plazas disponibles:</asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:DropDownList ID="TextBoxPeople" CssClass="form-control" runat="server" Style="width: 100%; padding: 5px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            <asp:ListItem Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="1" Text="1"></asp:ListItem>
                            <asp:ListItem Value="2" Text="2"></asp:ListItem>
                            <asp:ListItem Value="3" Text="3"></asp:ListItem>
                            <asp:ListItem Value="4" Text="4"></asp:ListItem>
                            <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            <asp:ListItem Value="6" Text="6"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <!-- COD.POSTAL de la vivienda -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelCodPos" runat="server" CssClass="control-label bold">Código Postal de la vivienda: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxCodPos" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- Ciudad o municipio de la vivienda-->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelCity" runat="server" CssClass="control-label bold">Ciudad o municipio dónde se encuentra la vivienda: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxCity" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- Provincia de la vivienda-->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelProvince" runat="server" CssClass="control-label bold">Provincia dónde se encuentra la vivienda: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxProvince" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>
            <!-- calle de la vivienda-->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="lbCalle" runat="server" CssClass="control-label bold">Calle dónde se encuentra la vivienda: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxCalle" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <!-- Foto de la vivienda -->

            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelPhoto" runat="server">Foto de la vivienda: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:FileUpload ID="FileUploadPhoto" runat="server" />
                    </div>
                </div>
            </div>





            <!-- LastName -->
            <!-- Email -->
            <!-- UserName -->
            <!-- Phone -->
            <!-- Password -->
            <!-- RepeatPassword -->



            <asp:Button ID="ButtonInsert" runat="server"
                Text="Insertar piso"
                CssClass="btn btn-primary btn-lg ButtonInsert"
                ValidationGroup="InsertFlat" onclick="ButtonInsert_Click" />


            <div class="clear"></div>
            <br />
        </div>

        <!-- Validator -->
        <div id="validator" class="hide">

            <%--
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxTitle" CssClass="field-validation-valid" ErrorMessage="El título es obligatorio." />
            --%>

            <!-- Validador PRICE -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxPrice" CssClass="field-validation-valid" ErrorMessage="El precio es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPrice" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxPrice" CssClass="field-validation-valid" ErrorMessage="El precio puede contener mínimo 2 cifras y máximo 4, solo puede contener números"
                ValidationExpression="^[0-9]{2,4}$"></asp:RegularExpressionValidator>

            <!-- Validador GENDER -->
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidatorPeople" runat="server" InitialValue="" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxPeople" CssClass="field-validation-valid" ErrorMessage="Gente que al-berga la vivienda obligatorio">
            </asp:RequiredFieldValidator>

            <!-- Validador Cod.Pos -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCodPos" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxCodPos" CssClass="field-validation-valid" ErrorMessage="El código postal es obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCodPos" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxCodPos" CssClass="field-validation-valid" ErrorMessage="El código postal está restringido a 9 cifras"
                ValidationExpression="^[0-9]{0,9}$"></asp:RegularExpressionValidator>

            <!-- Validador Ciudad/Municipio -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxCity" CssClass="field-validation-valid" ErrorMessage="Ciudad o municipio obligatorio." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCity" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxCity" CssClass="field-validation-valid" ErrorMessage="La ciudad o municipio solo puede contener letras."
                ValidationExpression="^[A-Za-zñ]*$"></asp:RegularExpressionValidator>

            <!-- Validador Provincia -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorProvince" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxProvince" CssClass="field-validation-valid" ErrorMessage="Provincia obligatoria." />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorProvince" runat="server" ValidationGroup="InsertFlat"
                ControlToValidate="TextBoxProvince" CssClass="field-validation-valid" ErrorMessage="La provincia solo puede contener letras."
                ValidationExpression="^[A-Za-zñ]*$"></asp:RegularExpressionValidator>


        </div>
        <!-- /Validator -->


    </form>
</asp:Content>
