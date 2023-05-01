using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoInfo
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FavoriteCrypto"] != null && Session["FavoriteCrypto"].Equals("Bitcoin"))
            {
                mainCss.Attributes["href"] = "~/css/stylechange.css";
                headerImg.Attributes["src"] = "~/images/bitcoin-btc-logo.png";
                headerImg.Visible = true;

            }
            else if (Session["FavoriteCrypto"] != null && Session["FavoriteCrypto"].Equals("Ethereum"))
            {
                mainCss.Attributes["href"] = "~/css/changestyle2.css";
                headerImg.Attributes["src"] = "~/images/ethereum-eth-logo.png";
                headerImg.Visible = true;
            }
            else if (Session["FavoriteCrypto"] != null && Session["FavoriteCrypto"].Equals("Litecoin"))
            {
                mainCss.Attributes["href"] = "~/css/changestyle3.css";
                headerImg.Attributes["src"] = "~/images/litecoin-ltc-logo.png";
                headerImg.Visible = true;
            }
            else
            {
                mainCss.Attributes["href"] = "~/css/style.css";
                headerImg.Visible = false;
            }
        }
    }
}