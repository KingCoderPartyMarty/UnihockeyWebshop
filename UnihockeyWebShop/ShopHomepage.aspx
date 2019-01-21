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
        <div class="column1">
            <!-- Bild einfügen welches auf nächste Seite verweist -->
            <img class="StockeBild1" src="/img/hofbauer.jpg"/>
        </div>

        <div class="column1">
           <img class="StockeBild1" src="/img/stockgegenwurst.jpg"/>
        </div>
        <div class="column1">
           <img class="StockeBild1" src="/img/regal.jpg"/>
        </div>
 
    </div>

    
</body>
</html>
