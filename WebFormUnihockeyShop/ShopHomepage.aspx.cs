using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormUnihockeyShop
{
    public partial class ShopHomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtnClicked(object sender, EventArgs e)
        {
            // perform action  
            Response.Redirect("Login.aspx");
            
        }
    }
}