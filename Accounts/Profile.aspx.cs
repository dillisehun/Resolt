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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {     if (Session["txtRoll"] != null)
            {
                log.Text = "LOGOUT";
                profile.Text = Session["txtRoll"].ToString();
                             logi.Attributes["href"] = "wall.aspx";
            }
            else
            {
                Response.Redirect("Login.aspx");
                log.Text = "LOGIN";
                profile.Text = "SIGNUP";


            }

            string rollno = Session["txtRoll"].ToString();
            
            string Password = Session["txtPassword"].ToString();
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
                  
          string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        
        string str;
              
          DataTable dt = new DataTable();
            OleDbConnection con = new OleDbConnection(strConnString);
            con.Open();
                   
            if (Session["txtRoll"] != null)
              {         str = "Select username,branch,semester,year,password,gender,Profilepic,Resume,email from Users where username='"+rollno+"'";
            OleDbDataAdapter adp = new OleDbDataAdapter(str,con);
            adp.Fill(dt);
  

                if (dt!=null && dt.Rows.Count>0)
                { 
                    
                txtRoll.Text = rollno;
                txtPassword.Text = Password;
                txtEmail.Text = dt.Rows[0]["email"].ToString();
                txtGen.Text = dt.Rows[0]["gender"].ToString(); ;
                txtBr.Text = dt.Rows[0]["branch"].ToString(); ;
                txtye.Text = dt.Rows[0]["year"].ToString(); ;
                txtSem.Text = dt.Rows[0]["semester"].ToString(); ;
                string FilePathpic = dt.Rows[0]["Profilepic"].ToString();
             Prof.Src = FilePathpic.Replace(@"c:\users\future-sateesh\documents\visual studio 2012\Projects\Resolt\Resolt\Accounts\", string.Empty);
             string FilePathres = dt.Rows[0]["Resume"].ToString();
             Res.Attributes["href"] = FilePathres.Replace(@"c:\users\future-sateesh\documents\visual studio 2012\Projects\Resolt\Resolt\Accounts\", string.Empty);
       
            }

            
                }
            //OleDbCommand com = new OleDbCommand(str,con);
            


        }


                    //Response.Redirect("Ranks.aspx");
                }
        }


