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
    public class UserBL
    {
        #region CRUD's
        //creaun usuario a partir de un UsuarioEN
        public static void CreateFromEN(string p_dbCnxStr, User us)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                UserCAD.Create(cnx, us);

        }

        //Actualiza los datos de un usuario a partir de un UsuarioEN.
        public static bool UpdateFromEN(string p_dbCnxStr, User us)
        {
            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                return UserCAD.Update(cnx,us);

        }

        //elimina un usuario de la BD a partir de su ID
        public static bool Delete(string p_dbCnxStr, int p_id)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(p_dbCnxStr))
                return UserCAD.Delete(cnx, p_id);

        }


        #endregion
        #region Getting Data

        //devuelve un usuario a partir de su ID

        public static User[] GetAllToEN(string dbcnx, int id)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
            {

                return UserCAD.GetAll(cnx);

            }

        }
        
        
        
        public static User GetByIdToEN(string dbcnx, int id)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
            {

                return UserCAD.GetById(cnx, id);

            }

        }
        //devuelve un usuario a parti de su Nick.
        public static User GetUserByNick(string dbcnx, string nick)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
                return UserCAD.GetByNick(cnx, nick);

        }

        public static User GetUserByMail(string dbcnx, string mail)
        {

            using (SqlConnection cnx = DataContextManager.GetOpenedConnection(dbcnx))
                return UserCAD.GetByMail(cnx, mail);

        }
        


        #endregion
    }
}
