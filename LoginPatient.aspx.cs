using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;


namespace PatientsManagementSystem
{
    public partial class LoginPatient : Page
    {
        SqlConnection conn;
        SqlCommand comm;
        //string connectionstring = "Data Source=TRAINING-VDI1\\SQLEXPRESS17;Initial Catalog=PatientInfo;User ID = sa; Password =password_123;multipleActiveResult=True ";
        //Server=localhost\SQLEXPRESS;Database=master;Trusted_Connection=True;
        string connectionstring;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                 connectionstring = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                 conn = new SqlConnection(connectionstring);
                 conn.Open();
                 comm = new SqlCommand();
                 comm.Connection = conn;
                 string user = txtUserName.Text;
                 string pass = txtPassword.Text;
                 string qry = "select * from Patient where UserName='" + user + "' and Password='" + pass + "'";
                 SqlCommand cmd = new SqlCommand(qry, conn);
                 SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                    Session["UserName"] = user;
                        Response.Write("Login Sucess......!!");
                    }
                    else
                    {
                        Response.Write("UserName & Password Is not correct Try again..!!");

                    }
              }
             catch (ArgumentNullException)
            {
                MessageBox.Show("Please enter value!!!");
            }
            catch (SqlException)
            {
                MessageBox.Show("Database related exception occured!!!");
            }
            catch (Exception)
            {
                MessageBox.Show("Not Found!!!");
            }

            finally
            {
               
                Response.Write("Sucessfully Submited!!!");
                conn.Close();

            }
             Response.Redirect("PatientDetails.aspx",true);
          }
     }
}