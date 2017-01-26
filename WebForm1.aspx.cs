
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
 
namespace Resolt
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ranks_div.Visible = false;
            


            if (Session["txtRoll"] != null)
            {
                Button1.Enabled = true;
                roll_lab.Text = Session["txtRoll"].ToString();
                shw_dept.Visible = true;
            }
            else {

                roll_lab.Enabled = false;
                roll_lab.Text = "";
                Button1.Enabled = true;
                shw_dept.Visible = false;
                br.Visible = true;
                Error.Text = "Please Login First for Specific Result";

            }

        }            
      protected void Button_Click(object sender, EventArgs e)
        {

            Error.Text = "";

          string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        
        string str;
        
          string rollno = roll_lab.Text.Trim();
            string branch = br.Text.Trim();
          string sem = semester.Text.Trim();

          DataTable dt = new DataTable(); DataTable dt_br = new DataTable();
            OleDbConnection con = new OleDbConnection(strConnString);
            con.Open();

            if (rollno != "" && br.SelectedItem.Text=="SELECT" && semester.SelectedItem.Text!="SELECT SEMESTER")
              {

                  string brrr = "select branch from users where username='" + rollno + "'";
                  OleDbDataAdapter adp_br = new OleDbDataAdapter(brrr, con);
                  adp_br.Fill(dt_br);
                  branch = dt_br.Rows[0][0].ToString();
                str = "Select rollno,branch,result,semester,yearr from Ranks where branch='"+branch+"' and semester='"+sem+"' and rollno='"+rollno+"'";
            OleDbDataAdapter adp = new OleDbDataAdapter(str,con);
            adp.Fill(dt);
  
                }
            else {
         
                  str = "Select rollno,branch,result,semester,yearr from Ranks where branch='"+branch+"' and semester='"+sem+"' ";
            OleDbDataAdapter adp = new OleDbDataAdapter(str,con);
            adp.Fill(dt);
  
            }
            //OleDbCommand com = new OleDbCommand(str,con);
            

                if (dt!=null && dt.Rows.Count>0)
                {
                    ranks_grid.DataSource = dt;
                    ranks_grid.DataBind();
                    ranks_div.Visible = true;

                    //Response.Redirect("Ranks.aspx");
                }
                else
                {
                    Error.Text = "Invalid Semester or Branch! Please try again!";
                }
            
        }

      protected void shw_dept_Click(object sender, EventArgs e)
      {
          br.SelectedIndex=0;
          if (br.Visible == true)
          { 
              shw_dept.Text = "SHOW DEPARTMENT";
              br.Visible = false;
              roll_lab.Visible = true;
          }
          else
          {
              shw_dept.Text = "HIDE DEPARTMENT";
              br.Visible = true;
              roll_lab.Visible = false;
          }
      }



     
    }
}