using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Data;
using System.Configuration;
using System.Data.OleDb;
using System.IO;
namespace Resolt.Accounts
{
    public partial class wall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (Session["txtRoll"] != null)
            {
                Button1.Enabled = true;
                profile.Text = Session["txtRoll"].ToString();


                log.Text = "Friends";

                logi.Attributes["href"] = "View.aspx";
                Button2.Text = "LOGOUT";

            }
            else
            {

                log.Text = "LOGIN";
                Button2.Text = "LOGIN";
                profile.Text = "SIGNUP";
                Button1.Enabled = false;
                Error.Text = "Please Login First";
            }





            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            string str;

            DataTable dt = new DataTable();
            OleDbConnection con = new OleDbConnection(strConnString);
            con.Open();

            str = "Select comments,pic,dt from commentss ";
            OleDbDataAdapter adp = new OleDbDataAdapter(str, con);
            adp.Fill(dt);

            con.Close();
            if (dt != null && dt.Rows.Count > 0)
            {
                /*      int i;
                  //for ( i = 0; i <dt.Rows.Count; i++)
                     {
                                  System.Web.UI.HtmlControls.HtmlGenericControl dynDiv =
                                      new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                                  body.id = "dynDivCode";
                                  dynDiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "Gray");
                                  dynDiv.Style.Add(HtmlTextWriterStyle.Height, "20px");
                                  dynDiv.Style.Add(HtmlTextWriterStyle.Width, "300px");
                                  dynDiv.InnerHtml = "I was created using Code Behind";
                                  this.Controls.Add(body);
                //              }*/
                //now0.Text = dt.Rows[0]["dt"].ToString();
                //post0.Text = dt.Rows[0]["comments"].ToString();
                //string FilePathpic0 = dt.Rows[0]["pic"].ToString();
                //Img0.Src = FilePathpic0.Replace(@"c:\users\future-sateesh\documents\visual studio 2012\Projects\Resolt\Resolt\Accounts\", string.Empty);

                //now1.Text = dt.Rows[1]["dt"].ToString();
                //post1.Text = dt.Rows[1]["comments"].ToString();
                //string FilePathpic1 = dt.Rows[1]["pic"].ToString();
                //Img1.Src = FilePathpic1.Replace(@"c:\users\future-sateesh\documents\visual studio 2012\Projects\Resolt\Resolt\Accounts\", string.Empty);

                //now2.Text = dt.Rows[2]["dt"].ToString();
                //post2.Text = dt.Rows[2]["comments"].ToString();
                //string FilePathpic2 = dt.Rows[2]["pic"].ToString();
                //Img2.Src = FilePathpic2.Replace(@"c:\users\future-sateesh\documents\visual studio 2012\Projects\Resolt\Resolt\Accounts\", string.Empty);

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    dt.Rows[i]["pic"] = dt.Rows[i]["pic"].ToString().Replace(@"c:\users\future-sateesh\documents\visual studio 2012\Projects\Resolt\Resolt\Accounts\", string.Empty);
                }

                ranks_grid.DataSource=dt;
                ranks_grid.DataBind();
                //}


            }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string FilePathpic="";
            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            string dttt = DateTime.Now.ToString();
            string rollno = Session["txtRoll"].ToString();
            String posti = Postit.Text;
            
            DataTable dt = new DataTable();
            OleDbConnection con = new OleDbConnection(strConnString);
            string str2 = "Select Profilepic from Users where username='" + rollno + "'";
            con.Open();
           
            OleDbDataAdapter adp = new OleDbDataAdapter(str2, con);
            adp.Fill(dt);

            con.Close();

            if (dt != null && dt.Rows.Count > 0)
             {      FilePathpic = dt.Rows[0]["Profilepic"].ToString();
                       
            }
                String insertQuery = "Insert into commentss (rollno,comments,dt,pic) values ('" + rollno + "' ,'" + posti + "','" + dttt + "','" + FilePathpic + "' )";
                con.Open();
                OleDbCommand cmd = new OleDbCommand(insertQuery, con);
                cmd.ExecuteNonQuery();


                con.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["txtRoll"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}