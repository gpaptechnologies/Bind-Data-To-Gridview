using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GirdView
{
    public class BLL_GridView
    {
        public static string connectionstring()
        {
            string cstr = string.Empty;
            cstr = ConfigurationManager.ConnectionStrings["myConnectionstring"].ToString();
            return cstr;
        }

        public DataTable GetEmployeeData()
        {
            SqlConnection connection = null;
            SqlCommand command = null;
            SqlDataAdapter sqlda = null;
            DataTable dtEmployees = null;

            using (connection = new SqlConnection(connectionstring()))
            {
                command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "USP_GETEMPLOYEES";
                sqlda = new SqlDataAdapter(command);
                dtEmployees = new DataTable();
                sqlda.Fill(dtEmployees);
            }
            return dtEmployees;
        }
    }
}