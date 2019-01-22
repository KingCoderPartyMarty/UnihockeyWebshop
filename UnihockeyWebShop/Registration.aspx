<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="UnihockeyWebShop.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Unihockey Webshop</title>
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
            <div>
                <h1 style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 50%;">Login</h1><br />
                <p style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 50%;">Benutzername</p><br />
                <asp:TextBox Style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 45%;" ID="BenutzernameTextBox" runat="server"></asp:TextBox><br />
                <p style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 50%;">Passwort</p><br />
                <asp:TextBox Style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 45%;" ID="PasswortTextBox" runat="server" TextMode="Password"></asp:TextBox><br />
                <p style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 50%;">Passwort</p><br />
                <asp:TextBox Style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 45%;" ID="PasswortBestaetigenTextBox" runat="server" TextMode="Password"></asp:TextBox><br />

                <asp:Button Style="margin-top:2%; font-size: 20px; float: left; margin-left: 45%;" ID="RegistrierenButton" runat="server" Text="Registrieren" OnClick="RegistrierenButton_Click" />
                <asp:Button Style="margin-top:2%; font-size: 20px; float: right; margin-right: 40%;" ID="ZurueckButton" runat="server" Text="Zurueck" OnClick="ZurueckButton_Click" />
                

                <asp:Label Style="position: relative; margin-top: 2%; font-size: 20px; float: left; margin-left: 40%;" ID="RegistrationErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
