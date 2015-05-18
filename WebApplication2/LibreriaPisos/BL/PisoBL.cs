using LibreriaPisos.CAD;
using LibreriaPisos.EN;
using LibreriaPisos.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibreriaPisos.BL
{
    public class PisoBL
    {

        #region CRUD's
        
        public static void CreateFromEN(string p_dbCnxStr, Piso us)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                PisoCAD.Create(cnx, us);

        }

       
        public static bool UpdateFromEN(string p_dbCnxStr, Piso us)
        {
            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                return PisoCAD.Update(cnx, us);

        }

        
        public static bool Delete(string p_dbCnxStr, int p_id)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                return PisoCAD.Delete(cnx, p_id);

        }


        #endregion
        #region Getting Data



        public static List<Piso> GetByPoblacion(string dbcnx, string pobla)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
            {

                return PisoCAD.GetByPoblacion(cnx , pobla);

            }

        }

        public static List<Piso> GetByCiudad(string dbcnx, string pobla)
        {
            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
                return PisoCAD.GetByPoblacion(cnx, pobla); 

        }


        public static Piso GetByIdToEN(string dbcnx, int id)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
            {

                return PisoCAD.GetById(cnx, id);

            }

        }
        public static List<Piso> GetUserByCodPos(string dbcnx, int cod)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
                return PisoCAD.GetByCodpos(cnx, cod);

        }

       

        public static List<Piso> GetPisoByIdUsers(string dbcnx, int id)
        {
            
            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
                return PisoCAD.GetByidUser(cnx, id);

        }


        #endregion


    }
}
