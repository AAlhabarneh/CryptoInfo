using CryptoInfo.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoInfo
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AuthenticatedUser"] != null)
            {
                UserAccount account = (UserAccount)Session["AuthenticatedUser"];

                pnlUserProfile.Visible = true;
                pnlNotAuth.Visible = false;

                lblWelcome.Text = account.Name;
                lblUsername.Text = account.Username;
                lblPhone.Text = account.Phone;
                lblEmail.Text = account.Email;
            }
            else 
            {
                pnlUserProfile.Visible = false;
                pnlNotAuth.Visible = true;
            }
        }

        protected void favCrypto(object sender, EventArgs e)
        {
            

            if (Session["FavoriteCrypto"] != null)
            {
                Session["FavoriteCrypto"] = ddlFavCrypto.SelectedValue.ToString();
            }
            else 
            {
                Session.Add("FavoriteCrypto", ddlFavCrypto.SelectedValue.ToString());
            }

            Response.Redirect("UserProfile.aspx");
        }
    }
}