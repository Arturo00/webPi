<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyFlat.aspx.cs" Inherits="WebApplication2.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




    <div class="jumbotron" style="margin: 10%">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="panel panel-default" style="height: auto;">
                    <div class="panel-heading">
                        <h3>
                            <asp:Label ID="Label5" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Ciudad %></asp:Label>
                            -
                            <asp:Label ID="Label4" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Calle %></asp:Label>
                    </div>
                    </h3>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-3">
                                <asp:Image class="img-responsive" ID="Image1" runat="server" ImageUrl='<%# string.Format("{0}", ((LibreriaPisos.EN.Piso)Container.DataItem).ImgPiso) %>' />
                            </div>
                            <div class="col-lg-9">
                                <asp:Label ID="Label2" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Descripcion %></asp:Label><br />
                                <strong>Número de ocupantes: </strong>
                                <asp:Label ID="Label1" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Ocupantes %></asp:Label><br />
                                <strong>Código postal:</strong>
                                <asp:Label ID="Label3" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Codpos %></asp:Label><br />
                                <strong>Precio:</strong>
                                <asp:Label ID="Label6" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Precio %></asp:Label>
                                /Mes<br />
                                <strong>Población: </strong>
                                <asp:Label ID="Label7" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Poblacion %></asp:Label><br />
                                <strong>Puntuación: </strong>
                                <asp:Label ID="Label8" runat="server"><%#((LibreriaPisos.EN.Piso)Container.DataItem).Puntuacion %></asp:Label><br />
                                
                                
                                <asp:HyperLink class="btn btn-info" ID="HyperLink1" Style="width: 20%; margin-top: 15px;
                                    font-weight: bold; float: right;" runat="server" NavigateUrl='<%# string.Format("~/Myflat.aspx?eliminar={0}", ((LibreriaPisos.EN.Piso)Container.DataItem).Id) %>'>
                               Eliminar</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

     


</asp:Content>
