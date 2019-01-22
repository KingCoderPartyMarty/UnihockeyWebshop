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
                <asp:Label runat="server" ID="UserH1"></asp:Label>
            </div>
        </div>
        <br />
        <asp:GridView ID="GridViewStock" runat="server">
            <Columns>
                <asp:BoundField DataField="UnihockeyStock" HeaderText="Stock" />
                <asp:BoundField DataField="Marke" HeaderText="Marke" />
                <asp:BoundField DataField="Preis" HeaderText="Preis" />
                <asp:TemplateField ShowHeader="true" HeaderText="Zum Warenkorb">
                    <ItemTemplate>
                        <asp:Button ID="ButtonAddToWarenkorb" runat="server" CausesValidation="false" OnClick="ButtonAddToWarenkorb_Click"
                            Text="Hinzufügen" CommandArgument='<%# Eval("id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
