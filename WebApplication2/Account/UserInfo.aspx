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

        <div id="UserInfoContainer" style="margin-left: auto; margin-right: auto;">
            <!-- Título -->
            <h2>Información de usuario</h2>
            <br />

            <!-- Photo -->
            <asp:Image ImageUrl="~/Images/defaultavatar.png" runat="server" AlternateText="Default" />
            <br />

            <!-- Name -->
            <div class="form-group">
                <div>
                    <asp:Label ID="LabelNameDB" runat="server"><h3>Nombre</h3></asp:Label>
                </div>
            </div>

            <!-- LastName -->
            <div class="form-group">
                <div>
                    <asp:Label ID="LabelLastNameDB" runat="server">Apellidos</asp:Label>
                </div>
            </div>

            <!-- Email -->
            <div class="form-group">
                <div>
                    <asp:Label ID="LabelEmail" runat="server">Email: </asp:Label>
                    <asp:Label ID="LabelEmailDB" runat="server">Email</asp:Label>
                </div>
            </div>

            <!-- Phone -->
            <div class="form-group">
                <div>
                    <asp:Label ID="LabelPhone" runat="server">Teléfono: </asp:Label>
                    <asp:Label ID="LabelPhoneDB" runat="server">Teléfono</asp:Label>
                </div>
            </div>

            <!-- Score -->
            <div class="form-group">
                <div>
                    <asp:Label ID="LabelScore" runat="server">Puntuación: </asp:Label>
                    <div class="input-group rating">
                        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                    </div>
                    <asp:Label ID="LabelScoreDB" runat="server">0.0</asp:Label>
                </div>
            </div>
        </div>
        <%--DIV de UserInfoContainer--%>
    </form>

</asp:Content>


