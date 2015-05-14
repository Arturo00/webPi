<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="nitrocar._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
    <div class="jumbotron" style="margin-top:70px !important;">
        <h1>Busca tu piso</h1>
        <div class="row">
            <div class="col-lg-6">
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" style="width: 100%;padding: 5px;border-radius: 3%;border: 1px solid #BBB;margin-top: 15px;">
                </asp:DropDownList>
            </div>
            <div class="col-lg-6">
                <select name ="pisos" style="width: 100%;padding: 5px;border-radius: 3%;border: 1px solid #BBB;margin-top: 15px;">
                    <option selected value="0">Provincia </option>
                        <optgroup label="Coches">
                            <option value="1">Alicante</option>
                            <option value="2">Madrid</option>
                        </optgroup>
                        <optgroup label="Motos">
                            <option value="1">Kawa</option>
                        </optgroup>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <select name ="pisos" style="width: 100%;padding: 5px;border-radius: 3%;border: 1px solid #BBB;margin-top: 15px;">
                    <option selected value="0">Ciudad </option>
                        <optgroup label="Coches">
                            <option value="1">Audi</option>
                            <option value="2">Nissan</option>
                        </optgroup>
                        <optgroup label="Motos">
                            <option value="1">Kawa</option>
                        </optgroup>
                </select>
            </div>
        </div>
        <div class = text-right>
            <input id="inputEmail" class="form-control" placeholder="Email " required="" autofocus="" type="email"><input id="Email1" class="form-control" placeholder="Email " required="" autofocus="" type="email">
       </div>
       <div class ="putaprueba2">
            &nbsp;</div>
        <div class="row" style="margin-top:48px;">
            <div class="col-md-4"></div>
            <div class="col-md-4"><button style="width:100%;" class="btn btn-success" type="submit">Buscar</button></div>
            <div class="col-md-4"></div>
        </div>
    </div>
    </form>
</asp:Content>
