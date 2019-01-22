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
        public ObservableCollection<Unihockeystock> StockListe { get; set; } = new ObservableCollection<Unihockeystock>();
        protected void Page_Load(object sender, EventArgs e)
        {
            UserH1.Text = "Welcome "+((Benutzer)Session[0]).Username;
            using (var db = new WebShopDBContext())
            {
                db.Unihockeystock.ToList().ForEach(s => StockListe.Add(s));
            }
            GridViewStock.DataSource = StockListe;
            
            GridViewStock.DataBind();
        }

        protected void ButtonAddToWarenkorb_Click(object sender, EventArgs e)
        {

        }
    }
}