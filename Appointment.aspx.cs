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
    public partial class Appointment : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand comm;
        //string connectionstring = "Data Source=TRAINING-VDI1\\SQLEXPRESS17;Initial Catalog=PatientInfo;User ID = sa; Password =password_123;multipleActiveResult=True ";
        //Server=localhost\SQLEXPRESS;Database=master;Trusted_Connection=True;
        string connectionstring;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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
                SqlParameter PmtrDisease = new SqlParameter();
                PmtrDisease.ParameterName = "@ds"; // Defining Name  
                PmtrDisease.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrDisease.Direction = ParameterDirection.Input; // Setting the direction  

                //Creating instance of SqlParameter  
                SqlParameter PmtrDoctor = new SqlParameter();
                PmtrDoctor.ParameterName = "@dr"; // Defining Name  
                PmtrDoctor.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrDoctor.Direction = ParameterDirection.Input; // Setting the direction


                //Creating instance of SqlParameter  
                SqlParameter PmtrDate = new SqlParameter();
                PmtrDate.ParameterName = "@dt"; // Defining Name  
                PmtrDate.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrDate.Direction = ParameterDirection.Input; // Setting the direction


                //Creating instance of SqlParameter  
                SqlParameter PmtrGender = new SqlParameter();
                PmtrGender.ParameterName = "@gdn"; // Defining Name  
                PmtrGender.SqlDbType = SqlDbType.VarChar; // Defining DataType  
                PmtrGender.Direction = ParameterDirection.Input; // Setting the direction  


                //Creating instance of SqlParameter  
                SqlParameter PmtrPhone = new SqlParameter();
                PmtrPhone.ParameterName = "@ph"; // Defining Name  
                PmtrPhone.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrPhone.Direction = ParameterDirection.Input; // Setting the direction

                //Creating instance of SqlParameter  
                SqlParameter PmtrAge = new SqlParameter();
                PmtrAge.ParameterName = "@ag"; // Defining Name  
                PmtrAge.SqlDbType = SqlDbType.Int; // Defining DataType  
                PmtrAge.Direction = ParameterDirection.Input; // Setting the direction

                //Creating instance of SqlParameter  
                SqlParameter PmtrFamilyMember = new SqlParameter();
                PmtrFamilyMember.ParameterName = "@fm"; // Defining Name  
                PmtrFamilyMember.SqlDbType = SqlDbType.VarChar; // Defining DataType  
                PmtrFamilyMember.Direction = ParameterDirection.Input; // Setting the direction



                comm.Parameters.Add(PmtrFirstName);
                comm.Parameters.Add(PmtrLastName);
                comm.Parameters.Add(PmtrDisease);
                comm.Parameters.Add(PmtrDoctor);
                comm.Parameters.Add(PmtrDate);
                comm.Parameters.Add(PmtrGender);
                comm.Parameters.Add(PmtrPhone);
                comm.Parameters.Add(PmtrAge);
                comm.Parameters.Add(PmtrFamilyMember);



                // Adding Parameter instances to sqlcommand  
                comm = new SqlCommand("insert into Appointment Values(@fn,@lm,@ds,@dr,@dt,@gdn,@ph,@ag,@fm)", conn);
                {
                    comm.Parameters.AddWithValue("@fn", txtFirstName.Text);
                    comm.Parameters.AddWithValue("@lm", txtLastName.Text);
                    comm.Parameters.AddWithValue("@ds", txtDisease.Text);
                    comm.Parameters.AddWithValue("@dr", txtDoctor.Text);
                    comm.Parameters.AddWithValue("@dt", txtDate.Text);
                    comm.Parameters.AddWithValue("@gdn", txtGender.Text);
                    comm.Parameters.AddWithValue("@ph", txtPhone.Text);
                    comm.Parameters.AddWithValue("@ag", txtAge.Text);
                    comm.Parameters.AddWithValue("@fm", txtFamilyMember.Text);


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
            }
        }
    }
}



