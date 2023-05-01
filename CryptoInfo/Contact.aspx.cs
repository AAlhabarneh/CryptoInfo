using CryptoInfo.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoInfo
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

                UserContact contact = new UserContact();

                contact.Name = tbName.Text;
                contact.Email = tbEmail.Text;
                contact.Subject = tbSubject.Text;
                contact.Message = tbMessage.Text;
                contact.Date = tbDate.Text;

                //add the account to session
                Session.Add("UserMessage", contact);

                //redirect the authenticated account to a user profile page
                Response.Redirect("MessageSent.aspx");
                
                //Insert user message into database
                UserMessageTable.InsertParameters["Name"].DefaultValue = contact.Name;
                UserMessageTable.InsertParameters["Date"].DefaultValue = contact.Date;
                UserMessageTable.InsertParameters["Email"].DefaultValue = contact.Email;
                UserMessageTable.InsertParameters["Message"].DefaultValue = contact.Message;
                UserMessageTable.InsertParameters["Subject"].DefaultValue = contact.Subject;

                UserMessageTable.Insert();
                
        }
    }
}