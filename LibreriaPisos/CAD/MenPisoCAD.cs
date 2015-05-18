using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibreriaPisos.EN;

namespace LibreriaPisos.CAD
{
    public static class MenPisoCAD
    {

        private const string TableName = "MenPiso";

        #region CRUD's
        public static long Create(SqlConnection cnx, MenPiso em)
        {
            int value = -1;
            string SQL = string.Format("INSERT INTO {0}( IDPISO, MENSAJE, IDUSER, PUNTUACION) " +
            " VALUES( @IDPISO , @MENSAJE, @IDUSER, @PUNTUACION );  " +
            "SELECT ID FROM {0} WHERE ID = @@IDENTITY ;",
                MenPisoCAD.TableName);

            if (em == null) throw new ArgumentNullException();

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@IDPISO", SqlDbType.Int).Value = em.IdPiso;
                cmd.Parameters.Add("@IDUSER", SqlDbType.Int).Value = em.IdUser;
                cmd.Parameters.Add("@MENSAJE", SqlDbType.NVarChar).Value = em.Mensaje;
                cmd.Parameters.Add("@PUNTUACION", SqlDbType.Int).Value = em.Puntuacion;
         

                object ob = cmd.ExecuteScalar();
                if ((ob == null) || (ob.GetType() == typeof(DBNull))) value = -1;
                else value = Convert.ToInt32(ob);

                em.Id = value;
            }

            return value;
        }

        public static bool Delete(SqlConnection cnx, int id)
        {
            int value = 0;
            string SQL = string.Format("DELETE FROM {0} WHERE ID = @ID; ",
                MenPisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
                value = cmd.ExecuteNonQuery();

                return (value == 1);
            }
        }

        public static bool Update(SqlConnection cnx, MenPiso em)
        {
            int value = -1;
            string SQL = string.Format("UPDATE {0} SET IDPISO= @IDPISO,MENSAJE=@MENSAJE,IDUSER= @IDUSER, PUNTUACION= @PUNTUACION  WHERE ID= @ID ; ",
                MenPisoCAD.TableName);

            if (em == null) throw new ArgumentNullException();

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {

                cmd.Parameters.Add("@IDPISO", SqlDbType.Int).Value = em.IdPiso;
                cmd.Parameters.Add("@IDUSER", SqlDbType.Int).Value = em.IdUser;
                cmd.Parameters.Add("@MENSAJE", SqlDbType.NVarChar).Value = em.Mensaje;
                cmd.Parameters.Add("@PUNTUACION", SqlDbType.Int).Value = em.Puntuacion;
    

                value = cmd.ExecuteNonQuery();
                return value == 1;
            }

        }

        #endregion

        #region Getting Data

        public static MenPiso[] GetAllByIdPiso(SqlConnection cnx, int idPiso)
        {
            List<MenPiso> ls = new List<MenPiso>();


            string SQL = string.Format("SELECT * FROM {0} WHERE ID = @ID ORDER BY ID;",
                MenPisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {

                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = idPiso;
                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        ls.Add(MenPisoCAD.ParseToObject(rd));
                    }
                }
            }

            return ls.ToArray();
        }

        public static MenPiso[] GetAllByIdUser(SqlConnection cnx, int idUser)
        {
            List<MenPiso> ls = new List<MenPiso>();


            string SQL = string.Format("SELECT * FROM {0} WHERE ID = @ID ORDER BY ID;",
                MenPisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = idUser;
                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        ls.Add(MenPisoCAD.ParseToObject(rd));
                    }
                }
            }

            return ls.ToArray();
        }




        #endregion

        #region PARSE TO OBJECT

        private static MenPiso ParseToObject(SqlDataReader rd)
        {
            using (MenPiso us = new MenPiso())
            {
                us.Id = Convert.ToInt32(rd["ID"]);
                us.IdPiso = Convert.ToInt32(rd["IDPISO"]);
                us.IdUser = Convert.ToInt32(rd["IDUSER"]);
                us.Mensaje = Convert.ToString(rd["MENSAJE"]);
                us.Puntuacion = Convert.ToInt32(rd["PUNTUACION"]);
                
                return us;
            }
        }



        #endregion

    }
}
