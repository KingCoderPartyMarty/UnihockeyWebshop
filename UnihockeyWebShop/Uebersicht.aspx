<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uebersicht.aspx.cs" Inherits="UnihockeyWebShop.Uebersicht" %>

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
    <div id="HelloUserDiv">
            <asp:Label runat="server" id="UserH1"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
