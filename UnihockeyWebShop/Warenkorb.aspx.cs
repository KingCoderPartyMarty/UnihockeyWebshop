using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnihockeyWebShop
{
    public partial class Warenkorb : System.Web.UI.Page
    {
        public ObservableCollection<Unihockeystock> StockListe { get; set; } = new ObservableCollection<Unihockeystock>();

        protected void Page_Load(object sender, EventArgs e)
        {
            var waren = (List<string>)Session[1];
            foreach (var item in waren)
            {
                using (var db = new WebshopDBContext())
                {
                    StockListe.Add(db.Unihockeystock.FirstOrDefault(u => u.UnihockeyStock.Equals(item)));
                }
            }
            GridViewStock.DataSource = StockListe;
            GridViewStock.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage("simon.schaeppi@gmail.com", ((Benutzer)(Session[0])).Email);
            SmtpClient client = new SmtpClient();
            client.Port = 25;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Host = "smtp.gmail.com";
            mail.Subject = "Unihockey Webshop Bestellung";
            mail.Body = "Sie haben folgendes bestellt: " + System.Environment.NewLine;
            decimal preistotal = 0;
            foreach (var item in StockListe)
            {
                mail.Body += item.UnihockeyStock + System.Environment.NewLine;
                preistotal += (decimal)item.Preis;
            }
            mail.Body += "Total Kosten: " +  preistotal + System.Environment.NewLine;
            mail.Body += "Ueberweisung an Konto: CH 8900 4590 1256 2999";
            client.Send(mail);
        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopHomepage.aspx");
        }
    }
}