using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibreriaPisos.EN;
using System.Data.SqlClient;
using System.Data;

namespace LibreriaPisos.CAD
{
    public static class PisoCAD
    {
        private const string TableName = "Flat";

        #region CRUD's
        public static long Create(SqlConnection cnx, Piso em)
        {
            int value = -1;
            string SQL = string.Format("INSERT INTO {0}( IDUSER, PAIS, CIUDAD, POBLACION, CALLE, CODPOS, PRECIO, OCUPANTES, ALQUILADO, DESCRIPCION, PUNTUACION, ELIMINADO, IMGPISO) " +
            " VALUES( @IDUSER, @PAIS, @CIUDAD, @POBLACION, @CALLE, @CODPOS, @PRECIO, @OCUPANTES, @ALQUILADO, @DESCRIPCION, @PUNTUACION, @ELIMINADO, @IMGPISO );  " +
            "SELECT ID FROM {0} WHERE ID = @@IDENTITY ;",
                PisoCAD.TableName);

            if (em == null) throw new ArgumentNullException();

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@IDUSER", SqlDbType.Int).Value = em.IdUser;
                cmd.Parameters.Add("@PAIS", SqlDbType.NVarChar).Value = em.Pais;
                cmd.Parameters.Add("@CIUDAD", SqlDbType.NVarChar).Value = em.Ciudad;
                cmd.Parameters.Add("@POBLACION", SqlDbType.NVarChar).Value = em.Poblacion;
                cmd.Parameters.Add("@CALLE", SqlDbType.NVarChar).Value = em.Calle;
                cmd.Parameters.Add("@CODPOS", SqlDbType.Int).Value = Convert.ToInt32(em.Codpos);
                cmd.Parameters.Add("@PRECIO", SqlDbType.Decimal).Value = em.Precio;
                cmd.Parameters.Add("@OCUPANTES", SqlDbType.Int).Value = em.Ocupantes;
                cmd.Parameters.Add("@ALQUILADO", SqlDbType.Bit).Value = em.Alquilado;
                cmd.Parameters.Add("@DESCRIPCION", SqlDbType.NVarChar).Value = em.Descripcion;
                cmd.Parameters.Add("@PUNTUACION", SqlDbType.Int).Value = em.Puntuacion;
                cmd.Parameters.Add("@ELIMINADO", SqlDbType.Bit).Value = em.Eliminado;
                cmd.Parameters.Add("@IMGPISO", SqlDbType.NVarChar).Value = em.ImgPiso;

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
                PisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
                value = cmd.ExecuteNonQuery();

                return (value == 1);
            }
        }

        public static bool Update(SqlConnection cnx, Piso em)
        {
            int value = -1;
            string SQL = string.Format("UPDATE {0} SET IDUSER= @IDUSER,PAIS=@PAIS, CIUDAD= @CIUDAD, POBLACION= @POBLACION, CALLE= @CALLE, CODPOS= @CODPOS," +
                " PRECIO= @PRECIO, OCUPANTES= @OCUPANTES, ALQUILADO= @ALQUILADO, DESRIPCION= @DESRIPCION, PUNTUACION= @PUNTUACION, ELIMINADO= @ELIMINADO,IMGPISO=@IMGPISO   WHERE ID= @ID ; ",
                PisoCAD.TableName);

            if (em == null) throw new ArgumentNullException();

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {

                cmd.Parameters.Add("@IDUSER", SqlDbType.Int).Value = em.IdUser;
                cmd.Parameters.Add("@PAIS", SqlDbType.NVarChar).Value = em.Pais;
                cmd.Parameters.Add("@CIUDAD", SqlDbType.NVarChar).Value = em.Ciudad;
                cmd.Parameters.Add("@POBLACION", SqlDbType.NVarChar).Value = em.Poblacion;
                cmd.Parameters.Add("@CALLE", SqlDbType.NVarChar).Value = em.Calle;
                cmd.Parameters.Add("@CODPOS", SqlDbType.Int).Value = Convert.ToInt32(em.Codpos);
                cmd.Parameters.Add("@PRECIO", SqlDbType.Decimal).Value = em.Precio;
                cmd.Parameters.Add("@OCUPANTES", SqlDbType.Int).Value = em.Ocupantes;
                cmd.Parameters.Add("@ALQUILADO", SqlDbType.Bit).Value = em.Alquilado;
                cmd.Parameters.Add("@DESRIPCION", SqlDbType.NVarChar).Value = em.Descripcion;
                cmd.Parameters.Add("@PUNTUACION", SqlDbType.Int).Value = em.Puntuacion;
                cmd.Parameters.Add("@ELIMINADO", SqlDbType.Bit).Value = em.Eliminado;
                cmd.Parameters.Add("@IMGPISO", SqlDbType.NVarChar).Value = em.ImgPiso;

                value = cmd.ExecuteNonQuery();
                return value == 1;
            }

        }

        #endregion

        #region Getting Data

        public static Piso GetById(SqlConnection cnx, int id)
        {

            string SQL = string.Format("SELECT * FROM {0} WHERE ID = @ID;",
                PisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    if (rd.Read())
                    {
                        return PisoCAD.ParseToObject(rd);
                    }

                    return null;
                }
            }
        }

        public static List<Piso> GetByCiudad(SqlConnection cnx, string ciudad)
        {
            List<Piso> ls = new List<Piso>();

            string SQL = string.Format("SELECT * FROM {0} WHERE CIUDAD = @CIUDAD ORDER BY ID;",
                PisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@CIUDAD", SqlDbType.NVarChar).Value = ciudad;
               
                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        ls.Add(PisoCAD.ParseToObject(rd));
                    }
                }
            }

            return ls;
        }

        public static List<Piso> GetByPoblacion(SqlConnection cnx, string poblacion)
        {
            List<Piso> ls = new List<Piso>();

            string SQL = string.Format("SELECT * FROM {0} WHERE POBLACION = @POBLACION ORDER BY ID;",
                PisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@POBLACION", SqlDbType.NVarChar).Value = poblacion;

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        ls.Add(PisoCAD.ParseToObject(rd));
                    }
                }
            }

            return ls;
        }

        public static List<Piso> GetByCodpos(SqlConnection cnx, int codpos)
        {
            List<Piso> ls = new List<Piso>();

            string SQL = string.Format("SELECT * FROM {0} WHERE CODPOS = @CODPOS ORDER BY ID;",
                PisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@CODPOS", SqlDbType.Int).Value = codpos;

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        ls.Add(PisoCAD.ParseToObject(rd));
                    }
                }
            }

            return ls;
        }

        public static List<Piso> GetByidUser(SqlConnection cnx, int id)
        {
            List<Piso> ls = new List<Piso>();

            string SQL = string.Format("SELECT * FROM {0} WHERE IDUSER = @IDUSER ORDER BY ID;",
                PisoCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@IDUSER", SqlDbType.Int).Value = id;

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        ls.Add(PisoCAD.ParseToObject(rd));
                    }
                }
            }

            return ls;
        }
        

        #endregion


        #region PARSE TO OBJECT

        private static Piso ParseToObject(SqlDataReader rd)
        {
            using (Piso us = new Piso())
            {
                us.Id = Convert.ToInt32(rd["ID"]);
                us.IdUser = Convert.ToInt32(rd["IDUSER"]);
                us.Pais = Convert.ToString(rd["PAIS"]);
                us.Ciudad = Convert.ToString(rd["CIUDAD"]);
                us.Poblacion = Convert.ToString(rd["POBLACION"]);
                us.Calle = Convert.ToString(rd["CALLE"]);
                us.Codpos = Convert.ToInt32(rd["CODPOS"]);
                us.Precio = Convert.ToDecimal(rd["PRECIO"]);
                us.Ocupantes = Convert.ToInt32(rd["OCUPANTES"]);
                us.Alquilado = Convert.ToBoolean(rd["ALQUILADO"]);
                us.Descripcion = Convert.ToString(rd["DESCRIPCION"]);
                us.Puntuacion = Convert.ToInt32(rd["PUNTUACION"]);
                us.Eliminado = Convert.ToBoolean(rd["ELIMINADO"]);
                us.ImgPiso = Convert.ToString(rd["IMGPISO"]);


                return us;
            }
        }



        #endregion
    }
}
