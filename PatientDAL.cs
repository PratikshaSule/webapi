using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;


namespace PatientManagementSystemDAL
{
    public class PatientDAL
    {
        SqlConnection conn;
        SqlCommand comm;
        //string connectionstring = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=PatientInfo;Trusted_Connection=True;User ID =; Password =;multipleActiveResult=True ";
        //string connectionstring = System.Configuration.ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        string connectionstring;

        public void execution()
        {
            conn = new SqlConnection(connectionstring);

            connectionstring = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

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
            PmtrPhone.ParameterName = "@pn"; // Defining Name  
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
        }
    }
}


