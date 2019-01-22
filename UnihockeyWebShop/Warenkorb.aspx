<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Warenkorb.aspx.cs" Inherits="UnihockeyWebShop.Warenkorb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unihockey Webshop Warenkorb</title>

    <!-- CSS -->
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <header>
        <div id="HeaderTitle">
            <p id="TitleText">Unihockey Webshop Warenkorb</p>
        </div>
    </header>
    <form id="form1" runat="server">
        <div>
             <div id="loginbuttonDIV">
                <asp:Button runat="server" ID="loginbutton" OnClick="loginbutton_Click" name="BtnLogout" Text="Logout" />
            </div>
            <br />
            <asp:GridView ID="GridViewStock" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField ItemStyle-Width="30%" DataField="UnihockeyStock" HeaderText="Stock" />
                    <asp:BoundField ItemStyle-Width="30%" DataField="Marke" HeaderText="Marke" />
                    <asp:BoundField ItemStyle-Width="30%" DataField="Preis" HeaderText="Preis" />

                </Columns>
            </asp:GridView>
            <br />
            <asp:Button Style="margin-top: 2%; font-size: 20px; float: left; margin-left: 45%;" ID="Button1" runat="server" Text="Stöcke Bestellen" OnClick="Button1_Click" /><br />

        </div>
    </form>
</body>
</html>
