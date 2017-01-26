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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["txtRoll"] != null)
            {
                Response.Redirect("Profile.aspx");
            }
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            
            OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                   try
                   {
                       string FilePathres="";
                       string FilePathpic="";
                       String rollno = txtRoll.Text;
                       String password = txtPassword.Text;
                       String email = txtEmail.Text;
                       String year = ye.Text;
                       String branch = Br.Text;
                       String semester = Sem.Text;
                       String gender = RadioButtonList1.Text;
         
                       if (Profilepic.HasFile)
                       {

                           string FileName = Path.GetFileName(Profilepic.PostedFile.FileName);
                           string Extension = Path.GetExtension(Profilepic.PostedFile.FileName);
                           string FolderPath = ConfigurationManager.AppSettings["SnapPath"];
                          FilePathpic = Server.MapPath(FolderPath + FileName);
                          Session["Profilepic"] = FilePathpic;
              

                           Profilepic.SaveAs(FilePathpic);
                       }

                       if (Resume.HasFile)
                       {

                           string FileName = Path.GetFileName(Resume.PostedFile.FileName);
                           string Extension = Path.GetExtension(Resume.PostedFile.FileName);
                           string FolderPath = ConfigurationManager.AppSettings["SnapPath"];
                          FilePathres = Server.MapPath(FolderPath + FileName);
                          Session["Resume"] = FilePathres;

                           Resume.SaveAs(FilePathres);
                       
                       }
               
                Session["txtRoll"] = txtRoll.Text;
                Session["txtPassword"] = txtPassword.Text;
                Session["txtEmail"] = txtEmail.Text;
                Session["ye"] = ye.Text;
                Session["Br"] = Br.Text;
                Session["Sem"] = Sem.Text;
                Session["Gen"] = RadioButtonList1.Text;
            
           
            
            String insertQuery = "Insert into Users (Username,Password,email,year,branch,semester,gender,Profilepic,Resume) values ('"+rollno+"' ,'"+password+"','"+email+"','"+year+"','"+branch+"','"+semester+"','"+gender+"','"+FilePathpic+"','"+FilePathres+"' )";
            conn.Open();
            OleDbCommand cmd = new OleDbCommand(insertQuery,conn);
            cmd.ExecuteNonQuery();
            //cmd.Connection = conn;
             
                    //cmd.ExecuteNonQuery();
                    Response.Redirect("Profile.aspx");
    
                    conn.Close();
                   }       
                catch (OleDbException ex)
                {
                   Error.Text=ex.Message;
                   conn.Close();
                }
            }
           
        }

        

           
        
        }

 