<%@ Page
    Title="MyFlats"
    Language="C#"
    MasterPageFile="~/Site1.master"
    AutoEventWireup="true"
    CodeBehind="MyFlats.aspx.cs"
    Inherits="WebApplication2.Account.MyFlats" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">

        <br />
        <br />
        <br />

        <!-- Título -->
        <h2>
            <asp:Label runat="server" CssClass="text-left">Panel de administración de viviendas</asp:Label>
        </h2>
        <div class="row">
            <div class="clear"></div>
            <br />
            <!-- Mis Pisos -->
            <div class="form-group">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <br />
                    <asp:Label ID="LabelFlats" runat="server" CssClass="control-label bold"><h4>Administrar la vivienda: </h4></asp:Label>
                </div>
                <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                    <div class="input-group">
                        <asp:DropDownList ID="TextBoxGender" CssClass="form-control" runat="server" Style="width: 100%; padding: 5px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            <asp:ListItem Value="" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="0" Text="Piso0"></asp:ListItem>
                            <asp:ListItem Value="1" Text="Piso1"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>

        <!-- Botón -->
        <asp:Button ID="ButtonListItems" runat="server" Text="Listar" CssClass="btn btn-primary btn-lg buttonListItems"
            ValidationGroup="ListItems" OnClick="ButtonListItems_Click"/>
        <asp:Button ID="Button1" onClientClick="javascript:document.getElementById('concreteFlatInfo').style.display = 'none';" runat="server" Text="show" />
        <br />
        <br />

        <div class="form-horizontal">
            <!-- Título -->
            <h4>
                <asp:Label runat="server" CssClass="text-left">Mi vivienda</asp:Label>
            </h4>

            <div id="concreteFlatInfo" style="display:initial">

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
        </div>

    </form>
</asp:Content>
