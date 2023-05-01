using CryptoInfo.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoInfo
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit2_Click(object sender, EventArgs e)
        {

            //Check for username uniqueness
            Boolean isUniqueName = true;

            DataSourceSelectArguments args = new DataSourceSelectArguments();
            foreach (DataRowView view in UserAccountTable.Select(args)) 
            {
                if (view.Row["Username"].Equals(tbUsername.Text.Trim())) 
                {
                    isUniqueName= false;
                }
            }

            if (isUniqueName)
            {

                //Create and populate a useraccount object
                UserAccount account = new UserAccount();

                account.Name = tbfName.Text;
                account.Username = tbUsername.Text.Trim();

                //encrypt password
                byte[] data = System.Text.Encoding.ASCII.GetBytes(tbPassword.Text.Trim());
                data = new System.Security.Cryptography.SHA256Managed().ComputeHash(data);
                String hashedPassword = System.Text.Encoding.ASCII.GetString(data);

                account.Password = hashedPassword;


                account.Email = tbEmail.Text;
                account.Phone = tbPhone.Text;

                //Add new user account to the database
                UserAccountTable.InsertParameters["Name"].DefaultValue= account.Name;
                UserAccountTable.InsertParameters["Username"].DefaultValue = account.Username;
                UserAccountTable.InsertParameters["Password"].DefaultValue = account.Password;
                UserAccountTable.InsertParameters["Email"].DefaultValue= account.Email;
                UserAccountTable.InsertParameters["Phone"].DefaultValue=account.Phone;

                UserAccountTable.Insert();

                //add the account to session
                Session.Add("AuthenticatedUser", account);

                //redirect the authenticated account to a user profile page
                Response.Redirect("UserProfile.aspx");

            }
            else 
            {
                // username is not unique
                Response.Redirect("CreateAccount.aspx");

            }
        }
    }
}