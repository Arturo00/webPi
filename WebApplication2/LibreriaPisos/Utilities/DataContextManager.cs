using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibreriaPisos.Utilities
{
    public class DataContextManager
    {
         public static SqlConnection GetConnection()
        {
            string cnx = "Server=localhost; Port=3306; Database=BySBD; Uid=root; Pwd=;"; //modificar
            return DataContextManager.GetClosedConnection(cnx);
        }
        public static SqlConnection GetOpenedConnection(string cnxString)
        {
            SqlConnection my = new SqlConnection(cnxString);
       

            my.Open();
            return my;
        }

        public static SqlConnection GetClosedConnection(string cnxString)
        {
            return new SqlConnection(cnxString);
        }
    }

}

