using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PatientsManagementSystem
{
    public partial class PatientDetails : Page
    {
        SqlConnection conn;
        SqlCommand comm;
        //string connectionstring = "Data Source=TRAINING-VDI1\\SQLEXPRESS17;Initial Catalog=PatientInfo;User ID = sa; Password =password_123;multipleActiveResult=True ";
        //Server=localhost\SQLEXPRESS;Database=master;Trusted_Connection=True;
        string connectionstring;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
                connectionstring = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                conn = new SqlConnection(connectionstring);
            conn.Open();
            comm = new SqlCommand();
            comm.Connection = conn;
         
            string sql = "select * from Patient where UserName='" + Session["UserName"] + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.Read())
           {
                txtFirstName.Text = sdr.GetValue(0).ToString();
                txtLastName.Text = sdr.GetValue(1).ToString();
                txtUserName.Text = sdr.GetValue(2).ToString();
                txtGender.Text = sdr.GetValue(3).ToString();
                txtPhone.Text = sdr.GetValue(4).ToString();
                txtAddress.Text = sdr.GetValue(5).ToString();
                txtEmail.Text = sdr.GetValue(6).ToString();
                txtPassword.Text = sdr.GetValue(7).ToString();
            }
            sdr.Close();
            conn.Close();



            //txt_FirstName.Text = ds.Tables[].Rows[]["FirstName"].ToString();
            //txt_LastName.Text = ds.Tables[].Rows[]["LastName"].ToString();
            //txt_UserName.Text = ds.Tables[].Rows[]["UserName"].ToString();
            //txt_Gender.Text = ds.Tables[0].Rows[]["Gender"].ToString();
            //txt_Phone.Text = ds.Tables[0].Rows[]["Phone"].ToString();
            //txt_Address.Text = ds.Tables[0].Rows[]["Address"].ToString();
            //txt_Email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            //txt_Password.Text = ds.Tables[0].Rows[]["Password"].ToString();


        }
    }
}