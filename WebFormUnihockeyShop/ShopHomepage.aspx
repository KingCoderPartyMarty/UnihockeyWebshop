<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShopHomepage.aspx.cs" Inherits="WebFormUnihockeyShop.ShopHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <!-- Webseiten Titel -->
    <title>Unihockey Webshop</title>

    <!-- CSS -->
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
    <!-- Header Start -->
    <!-- Menu -->
    <header>
        <form runat="server">
            <div id="HeaderTitle">
            <p id="TitleText">Unihockey Webshop</p>
            <div id="loginbuttonDIV">
                <asp:Button runat="server" id="loginbutton" OnClick="loginBtnClicked" name="BtnLogin" Text="Login"/>
            </div>
        </div>
        </form>
        
       

    </header>
    <!-- Bilder Galerie Titel -->
  
    <!-- Bilder Galerie -->
    <div id="IMGGallery">
        <div id="column1">
            <!-- Bild einfügen welches auf nächste Seite verweist -->
            <img id="StockeBild1" src="/img/hofbauer.jpg"/>
        </div>

        <div id="column2">
           <img id="StockeBild2" src="/img/stockgegenwurst.jpg"/>
        </div>
        <div id="column3">
           <img id="StockeBild3" src="/img/regal.jpg"/>
        </div>
 
    </div>

    
</body>
</html>
