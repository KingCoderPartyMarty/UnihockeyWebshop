﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnihockeyWebShop
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Zurück zur Login Seite
        protected void ZurueckButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        //Neuen Benutzer registrieren
        protected void RegistrierenButton_Click(object sender, EventArgs e)
        {
            if (PasswortTextBox.Text.Equals(PasswortBestaetigenTextBox.Text))
            {
                string apiUrl = "http://localhost:60882/api/Benutzers/PostBenutzer/";
                var benutzer = new Benutzer()
                {
                    Username = BenutzernameTextBox.Text,
                    Password = PasswortTextBox.Text,
                    Email = EmailTextBox.Text
                    
                };

                using (WebClient client = new WebClient())
                {
                    string inputJson = (new JavaScriptSerializer()).Serialize(benutzer);
                    client.Headers["Content-type"] = "application/json";
                    client.Encoding = Encoding.UTF8;
                    string json = client.UploadString(apiUrl, inputJson);

                    var newBenutzer = (new JavaScriptSerializer()).Deserialize<Benutzer>(json);

                    if (newBenutzer != null)
                    {
                        Session["Benutzer"] = newBenutzer;
                        Response.Redirect("Uebersicht.aspx");
                    }
                    else
                    {
                        RegistrationErrorMessage.Text = "Dieser Benutzername ist schon vergeben.";
                    }
                }
            }
            else
            {
                RegistrationErrorMessage.Text = "Die Passwörter stimmen nicht überein";
            }
        }
    }
}