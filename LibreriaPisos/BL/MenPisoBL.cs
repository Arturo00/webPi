using LibreriaPisos.CAD;
using LibreriaPisos.EN;
using LibreriaPisos.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace LibreriaPisos.BL
{
    public class MenPisoBL
    {



        #region CRUD's

        public static void CreateFromEN(string p_dbCnxStr,MenPiso us)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                MenPisoCAD.Create(cnx, us);

        }


        public static bool UpdateFromEN(string p_dbCnxStr, MenPiso us)
        {
            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                return MenPisoCAD.Update(cnx, us);

        }


        public static bool Delete(string p_dbCnxStr, int p_id)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                return MenPisoCAD.Delete(cnx, p_id);

        }


        #endregion
        #region Getting Data



        public static MenPiso[] GetAllByIdPiso(string dbcnx, int idpi)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
            {

                return MenPisoCAD.GetAllByIdPiso(cnx, idpi);

            }

        }

        public static MenPiso[] GetAllByIdUser(string dbcnx, int idus)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
            {

                return MenPisoCAD.GetAllByIdUser(cnx, idus);

            }

        }






        #endregion




    }
}
