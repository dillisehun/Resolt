using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resolt.Helpers
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["txtRoll"] != null)
            {
                log.Text = "LOGOUT";
                profile.Text = Session["txtRoll"].ToString();
                logi.Attributes["href"] = "../Accounts/wall.aspx";
            }
            else
            {
                log.Text = "LOGIN";
                profile.Text = "SIGNUP";


            }
        }
    }
}