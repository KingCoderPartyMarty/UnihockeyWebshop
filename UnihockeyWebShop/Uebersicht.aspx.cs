using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnihockeyWebShop
{
    public partial class Uebersicht : System.Web.UI.Page
    {
        public List<Unihockeystock> WarenListe { get; set; } = new List<Unihockeystock>();
        public ObservableCollection<Unihockeystock> StockListe { get; set; } = new ObservableCollection<Unihockeystock>();

        //Wenn seite geladen wird, die Liste der Stöcke abfüllen
        protected void Page_Load(object sender, EventArgs e)
        {
            UserH1.Text = "Welcome "+((Benutzer)Session[0]).Username;
            using (var db = new WebshopDBContext())
            {
                db.Unihockeystock.ToList().ForEach(s => StockListe.Add(s));
            }
            GridViewStock.DataSource = StockListe;
            
            GridViewStock.DataBind();
        }
        //Stock zum Warenkorb hinzufügen
        protected void ButtonAddToWarenkorb_Click(object sender, EventArgs e)
        {
            int RowId = ((GridViewRow)((Button)sender).Parent.Parent).RowIndex;
            var stock = StockListe[RowId];
            WarenListe.Add(stock);
            WarenkorbLabel.Text = WarenkorbLabel.Text + "," + stock.UnihockeyStock;
        }
        //LogOut zur Home Seite
        protected void loginbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopHomepage.aspx");
        }

        protected void GridViewStock_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
        //Zur Warenkorb Seite
        protected void ButtonToWarenkorb_Click(object sender, EventArgs e)
        {
            var waren = (WarenkorbLabel.Text.Split(',')).ToList();
            waren.RemoveAt(0);
            Session["Waren"] = waren;
            Response.Redirect("Warenkorb.aspx");
        }
    }
}