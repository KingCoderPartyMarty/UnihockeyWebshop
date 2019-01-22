<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Uebersicht.aspx.cs" Inherits="UnihockeyWebShop.Uebersicht" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unihockey Webshop Übersicht</title>

    <!-- CSS -->
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <header>
        <div id="HeaderTitle">
            <p id="TitleText">Unihockey Webshop Übersicht</p>
        </div>

    </header>
    <form id="form1" runat="server">
        <div>
             <div id="loginbuttonDIV">
                <asp:Button runat="server" id="loginbutton" OnClick="loginbutton_Click" name="BtnLogout" Text="Logout"/>
            </div>
            <div id="HelloUserDiv">
                <asp:Label runat="server" ID="UserH1"></asp:Label>
            </div>
        </div>
        <br />
        <asp:GridView OnRowCommand="GridViewStock_RowCommand" ID="GridViewStock" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField ItemStyle-Width="30%" DataField="UnihockeyStock" HeaderText="Stock" />
                <asp:BoundField ItemStyle-Width="30%" DataField="Marke" HeaderText="Marke" />
                <asp:BoundField ItemStyle-Width="30%" DataField="Preis" HeaderText="Preis" />
                <asp:TemplateField ItemStyle-Width="10%"  ShowHeader="true" HeaderText="Zum Warenkorb">
                    <ItemTemplate>
                        <asp:Button ID="ButtonAddToWarenkorb"  runat="server" CausesValidation="true"  OnClick="ButtonAddToWarenkorb_Click" Text="Hinzufügen" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
