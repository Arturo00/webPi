<%@ Page
    Title="FlatInfo"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="FlatInfo.aspx.cs"
    Inherits="WebApplication2.FlatInfo" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="formFlatInfo" runat="server">

        <br />
        <br />
        <br />

        <!-- Título -->
        <h3>
            <asp:Label ID="LabelInsertFlat" runat="server" CssClass="text-left">Información de la vivienda</asp:Label>
        </h3>


        <div class="clear"></div>
        <br />

        <div class="form-horizontal">

            <div id="intro-slide" class="hidden-xs hidden-sm-7 hidden-md-5 row text-center">
                <div id="slideshow" class ="slideshow">
                    <asp:Image ID="IMG1" ImageUrl="~/Images/FlatSlide.png" runat="server" AlternateText="IMG" />
                </div>
            </div>
            <br />

            <!-- Descripción -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <asp:Label ID="LabelDescription" runat="server" CssClass="control-label bold">Descripción del anuncio: </asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:TextBox ID="TextBoxDescription" runat="server"
                            CssClass="form-control" Height="150px"
                            TextMode="MultiLine" Width="400px" />
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


            <asp:Button ID="ButtonContact" runat="server"
                Text="Contactar"
                ValidationGroup="Contact" />


            <div class="clear"></div>
            <br />
        </div>



    </form>
</asp:Content>
