<%@ Page 
    Title="Página principal" 
    Language="C#" 
    MasterPageFile="~/Site1.master" 
    AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" 
%>
<%--Inherits="nitrocar._Default"--%>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="formDefault" runat="server">
        <div class="jumbotron" style="margin-top: 70px !important;">

            <!-- El scroll de imagenes tiene que ir aqui -->
            <div id="intro-slide">
                <div class="hidden-xs hidden-sm-7 hidden-md-5 row text-center">
                    <asp:Image ID="IMG1" ImageUrl="~/Images/FlatSlide.png" runat="server" AlternateText="IMG" />
                </div>
            </div>

            <div class="bottom">
                <h1>Busca tu piso</h1>
                <div class="row">
                    <div class="col-lg-6">
                        <asp:DropDownList ID="pisos" runat="server" Style="width: 100%; padding: 5px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            <asp:ListItem Value="1" Text="Todos"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Apartamento"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Ático"></asp:ListItem>
                            <asp:ListItem Value="4" Text="Dúplex"></asp:ListItem>
                            <asp:ListItem Value="5" Text="Chalet"></asp:ListItem>
                            <asp:ListItem Value="6" Text="Adosado"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-6">
                        <asp:DropDownList ID="provincia" runat="server" Style="width: 100%; padding: 5px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            <asp:ListItem Value="1" Text="Todos"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Alicante"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Valencia"></asp:ListItem>
                            <asp:ListItem Value="4" Text="Murcia"></asp:ListItem>
                            <asp:ListItem Value="5" Text="Castellón"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <asp:DropDownList ID="ciudad" runat="server" Style="width: 100%; padding: 5px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            <asp:ListItem Value="1" Text="Todos"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Alicante"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Valencia"></asp:ListItem>
                            <asp:ListItem Value="4" Text="Murcia"></asp:ListItem>
                            <asp:ListItem Value="5" Text="Castellón"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <%--                <input id="inputEmail" class="form-control" placeholder="Email " required="" autofocus="" type="email">--%>
                    <%--                <input id="Email1" class="form-control" placeholder="Email " required="" autofocus="" type="email">--%>

                    <div class="desde-hasta">
                        <div class="col-lg-3">
                            <asp:TextBox ID="TextBox1" class="form-control" placeholder="Desde" runat="server"
                                Style="width: 100%; padding: 4px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            </asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <asp:TextBox ID="TextBox2" class="form-control" placeholder="Hasta" runat="server"
                                Style="width: 100%; padding: 4px; border-radius: 3%; border: 1px solid #BBB; margin-top: 15px;">
                            </asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 48px;">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <button style="width: 100%;" class="btn btn-success" type="submit">Buscar</button>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </div>
    </form>

    <!-- Scripts with jQuery for the Checkbox, && slideShow -->
    <script type="text/javascript">
        $(document).ready(function () {

            $(function () {
                /* Checkbox */
                $('.checkboxLogin').find('label').addClass("checkboxLoginLabel");

                /* RadioButtons */
                $('.radiobuttonLogin').find('input').addClass("radiobuttonInput");
                $('.radiobuttonLogin').find('label').addClass("radiobuttonLabel");

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
