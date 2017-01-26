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
namespace Resolt
{
    public partial class Ranks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["txtRoll"] != null)
            {
                log.Text = "LOGOUT";
                profile.Text = Session["txtRoll"].ToString();
                logi.Attributes["href"] = "wall.aspx";
                
            }
            else
            {
                log.Text = "LOGIN";
                profile.Text = "SIGNUP";


            }
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


            string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            string str;

            DataTable dt = new DataTable();
            OleDbConnection con = new OleDbConnection(strConnString);
            con.Open();

            str = "Select rollno,result,branch,yearr,semester from ranks ";
            OleDbDataAdapter adp = new OleDbDataAdapter(str, con);
            adp.Fill(dt);

            con.Close();


            if (dt != null && dt.Rows.Count > 0)
            {
                
                
                prof_grid.DataSource = dt;
                prof_grid.DataBind();
                prof_div.Visible = true;

                //Response.Redirect("Ranks.aspx");
            }
        }
    }
}