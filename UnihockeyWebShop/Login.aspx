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
            <label style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 45%;">Username:</label>
            <br />
            <asp:TextBox style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 40%;" ID="BenutzernameTextBox" runat="server"></asp:TextBox><br />
            <br />
            <label style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 45%;">Passwort: </label>
            <br />
            <asp:TextBox style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 40%;" ID="PasswortTextBox" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Button style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 45%;" ID="Button1" runat="server" Text="Log In" OnClick="LoginButton_Click" />
            <asp:Label ID="LoginFailErrorMessage" runat="server"></asp:Label>

        </div>
    </form>

    <%-- <form id="form1" runat="server">
        <div>
            <h1 style="position:center;margin:5%;">Login</h1>
        </div>
    </form>--%>
</body>
</html>
