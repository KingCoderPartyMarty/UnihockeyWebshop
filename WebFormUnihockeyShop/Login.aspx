<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebFormUnihockeyShop.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <!-- Webseiten Titel -->
    <title>Unihockey Webshop Login</title>

    <!-- CSS -->
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <header>
        <div id="HeaderTitle">
            <p id="TitleText">Unihockey Webshop Login</p>
        </div>
    </header>

    <form id="form1" runat="server">
        <div>
            <label>Username: </label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <label>Passwort: </label>
            <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="LoginButton_Click" />
            <asp:Label ID="Label2" runat="server"></asp:Label>

        </div>
    </form>

    <%-- <form id="form1" runat="server">
        <div>
            <h1 style="position:center;margin:5%;">Login</h1>
        </div>
    </form>--%>
</body>
</html>
