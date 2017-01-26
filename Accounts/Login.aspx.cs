
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
 
namespace Resolt.Accounts
{
    public partial class Login : System.Web.UI.Page
    {

        static string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        OleDbConnection con = new OleDbConnection(strConnString);
            
        protected void Page_Load(object sender, EventArgs e)
        {   if (Session["txtRoll"] != null)
            {
                Response.Redirect("Profile.aspx");
            }
          
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        
        string str;
        string str2;
        protected void RegisterCheck(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();

            string UserName = txtRoll.Text.Trim();
            string Password = txtPassword.Text.Trim();
          
            con.Open();
            str = "Select * from Users where username='"+UserName+"' and password='"+Password+"'";
            str2 = "Select * from Users where username='"+UserName+"'";
            //OleDbCommand com = new OleDbCommand(str,con);
            OleDbDataAdapter adp = new OleDbDataAdapter(str,con);
            con.Close();
            adp.Fill(dt);

            OleDbDataAdapter adp2 = new OleDbDataAdapter(str2, con);
            con.Close();
            adp2.Fill(dt2);

                

                    if (dt != null && dt.Rows.Count > 0)
                    {
                        Session["txtRoll"] = UserName.ToString();
                        Session["txtPassword"] = Password.ToString();

                        Response.Redirect("Profile.aspx");
                    }
                
            else
                {     
        
        if (dt2 != null && dt2.Rows.Count > 0)
        
        
        {
            Error.Text = "<font style='text-color: orange;'>Invalid User Name or Password! Please try again!</font>";
          
        
        }
                    else
                    {
                        Error.Text = "Username Not Registered Please Register!";
                      
                    
                    }
           


                    
                }
            
        }
    }
}