using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Text;
using System.Configuration;

namespace PatientsManagementSystem
{
    public partial class RegistrationPatient : Page
    {

        SqlConnection conn;
        SqlCommand comm;
        //string connectionstring = "Data Source=TRAINING-VDI1\\SQLEXPRESS17;Initial Catalog=PatientInfo;User ID = sa; Password =password_123;multipleActiveResult=True ";
        //Server=localhost\SQLEXPRESS;Database=master;Trusted_Connection=True;
        string connectionstring;
        //connectionstring = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
          // public string GetConnectionStringByName(string connString)
          //{
          //  // Assume failure.
          //  string returnValue = null;

          //  // Look for the name in the connectionStrings section.
          //  ConnectionStringSettings settings =
          //      ConfigurationManager.ConnectionStrings[connString];
          //  Response.Write("Sorry..");
          //  // If found, return the connection string.
          //  if (settings != null)
          //      returnValue = settings.ConnectionString;

          //  return returnValue;
          // }

        public RegistrationPatient()
        {
           // InitializeComponent();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                connectionstring = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                conn = new SqlConnection(connectionstring);
                conn.Open();
                comm = new SqlCommand();
                comm.Connection = conn;


                //Creating instance of SqlParameter  
                SqlParameter PmtrFirstName = new SqlParameter();
                PmtrFirstName.ParameterName = "@fn"; // Defining Name  
                PmtrFirstName.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrFirstName.Direction = ParameterDirection.Input; // Setting the direction  

                //Creating instance of SqlParameter  
                SqlParameter PmtrLastName = new SqlParameter();
                PmtrLastName.ParameterName = "@lm"; // Defining Name  
                PmtrLastName.SqlDbType = SqlDbType.VarChar; // Defining DataType  
                PmtrLastName.Direction = ParameterDirection.Input; // Setting the direction  

                //Creating instance of SqlParameter  
                SqlParameter PmtrUserName = new SqlParameter();
                PmtrUserName.ParameterName = "@un"; // Defining Name  
                PmtrUserName.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrUserName.Direction = ParameterDirection.Input; // Setting the direction  

                //Creating instance of SqlParameter  
                SqlParameter PmtrGender = new SqlParameter();
                PmtrGender.ParameterName = "@gn"; // Defining Name  
                PmtrGender.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrGender.Direction = ParameterDirection.Input; // Setting the direction


                //Creating instance of SqlParameter  
                SqlParameter PmtrPhone = new SqlParameter();
                PmtrPhone.ParameterName = "@ph"; // Defining Name  
                PmtrPhone.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrPhone.Direction = ParameterDirection.Input; // Setting the direction


                //Creating instance of SqlParameter  
                SqlParameter PmtrAddress = new SqlParameter();
                PmtrAddress.ParameterName = "@Ad"; // Defining Name  
                PmtrAddress.SqlDbType = SqlDbType.VarChar; // Defining DataType  
                PmtrAddress.Direction = ParameterDirection.Input; // Setting the direction  


                //Creating instance of SqlParameter  
                SqlParameter PmtrEmail = new SqlParameter();
                PmtrEmail.ParameterName = "@em"; // Defining Name  
                PmtrEmail.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrEmail.Direction = ParameterDirection.Input; // Setting the direction

                //Creating instance of SqlParameter  
                SqlParameter PmtrPassword = new SqlParameter();
                PmtrPassword.ParameterName = "@ps"; // Defining Name  
                PmtrPassword.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrPassword.Direction = ParameterDirection.Input; // Setting the direction

                //Creating instance of SqlParameter  
                SqlParameter PmtrRePassword = new SqlParameter();
                PmtrRePassword.ParameterName = "@reps"; // Defining Name  
                PmtrRePassword.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrRePassword.Direction = ParameterDirection.Input; // Setting the direction

                comm.Parameters.Add(PmtrFirstName);
                comm.Parameters.Add(PmtrLastName);
                comm.Parameters.Add(PmtrUserName);
                comm.Parameters.Add(PmtrGender);
                comm.Parameters.Add(PmtrPhone);
                comm.Parameters.Add(PmtrAddress);
                comm.Parameters.Add(PmtrEmail);
                comm.Parameters.Add(PmtrPassword);
                comm.Parameters.Add(PmtrRePassword);


                // Adding Parameter instances to sqlcommand  
                comm = new SqlCommand("insert into Patient Values(@fn,@lm,@un,@gn,@ph,@Ad,@em,@ps,@reps)",conn);
                {
                     comm.Parameters.AddWithValue("@fn", txtFirstName.Text);
                     comm.Parameters.AddWithValue("@lm", txtLastName.Text);
                     comm.Parameters.AddWithValue("@un", txtUserName.Text);
                     comm.Parameters.AddWithValue("@gn", txtGender.Text);
                     comm.Parameters.AddWithValue("@ph", txtPhone.Text);
                     comm.Parameters.AddWithValue("@Ad", txtAddress.Text);
                     comm.Parameters.AddWithValue("@em", txtEmail.Text);
                     comm.Parameters.AddWithValue("@ps", txtPassword.Text);
                     comm.Parameters.AddWithValue("@reps", txtRePassword.Text);
                     comm.ExecuteNonQuery();
                   }
                // comm.CommandText = "insert into Patient Values(@fn,@lm,@un,@gn,@ph,@em,@ps,@reps)";
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
                //Response.Redirect(Request.Url.AbsoluteUri);

            }
        }

        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}








