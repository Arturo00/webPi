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
   

    public static class UserCAD
    {
        private const string TableName = "Usuarios";

        #region CRUD's
        public static long Create(SqlConnection cnx, User em)
        {
            int value = -1;
            string SQL = string.Format("INSERT INTO {0}( EMAIL, USUARIO, PASSWORD, NOMBRE, APELLIDOS, TELEFONO, PROVINCIA, CIUDAD, CODPOS, SEXO, ELIMINADO, PROPIETARIO) " +
            " VALUES( @EMAIL, @USUARIO, @PASSWORD, @NOMBRE, @APELLIDOS, @TELEFONO, @PROVINCIA, @CIUDAD, @CODPOS, @SEXO, @ELIMINADO, @PROPIETARIO );  " +
            "SELECT ID FROM {0} WHERE ID = @@IDENTITY ;",
                UserCAD.TableName);

            if (em == null) throw new ArgumentNullException();

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@EMAIL", SqlDbType.NVarChar).Value = em.Email;
                cmd.Parameters.Add("@USUARIO", SqlDbType.NVarChar).Value = em.Usuario;
                cmd.Parameters.Add("@PASSWORD", SqlDbType.NVarChar).Value = em.Password;
                cmd.Parameters.Add("@NOMBRE", SqlDbType.NVarChar).Value = em.Nombre;
				cmd.Parameters.Add("@APELLIDOS", SqlDbType.NVarChar).Value = em.Apellidos;
                cmd.Parameters.Add("@TELEFONO", SqlDbType.Int).Value = Convert.ToInt32(em.Telefono);			
                cmd.Parameters.Add("@PROVINCIA", SqlDbType.NVarChar).Value = em.Provincia;
                cmd.Parameters.Add("@CIUDAD", SqlDbType.NVarChar).Value = em.Ciudad;
				cmd.Parameters.Add("@CODPOS", SqlDbType.Int).Value = Convert.ToInt32(em.Codpos);
                cmd.Parameters.Add("@SEXO", SqlDbType.NVarChar).Value = em.Sexo;
                cmd.Parameters.Add("@ELIMINADO", SqlDbType.Bit).Value = em.Eliminado;
                cmd.Parameters.Add("@PROPIETARIO", SqlDbType.Bit).Value = em.Propietario;

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
                UserCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
                value = cmd.ExecuteNonQuery();

                return (value == 1);
            }
        }

        public static bool Update(SqlConnection cnx, User em)
        {
            int value = -1;
            string SQL = string.Format("UPDATE {0} SET EMAIL= @EMAIL, USUARIO=@USUARIO, PASSWORD= @PASSWORD, NOMBRE= @NOMBRE, APELLIDOS= @APELLIDOS," +
                " TELEFONO= @TELEFONO, PROVINCIA= @PROVINCIA, CIUDAD= @CIUDAD, CODPOS= @CODPOS, PROPIETARIO= @PROPIETARIO, ELIMINADO= @ELIMINADO  WHERE ID= @ID ; ",
                UserCAD.TableName);

            if (em == null) throw new ArgumentNullException();

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(em.Id);
                cmd.Parameters.Add("@EMAIL", SqlDbType.NVarChar).Value = em.Email;
                cmd.Parameters.Add("@USUARIO", SqlDbType.NVarChar).Value = em.Usuario;
                cmd.Parameters.Add("@PASSWORD", SqlDbType.NVarChar).Value = em.Password;
                cmd.Parameters.Add("@NOMBRE", SqlDbType.NVarChar).Value = em.Nombre;
				cmd.Parameters.Add("@APELLIDOS", SqlDbType.NVarChar).Value = em.Apellidos;
                cmd.Parameters.Add("@TELEFONO", SqlDbType.Int).Value = Convert.ToInt32(em.Telefono);			
                cmd.Parameters.Add("@PROVINCIA", SqlDbType.NVarChar).Value = em.Provincia;
                cmd.Parameters.Add("@CIUDAD", SqlDbType.NVarChar).Value = em.Ciudad;
				cmd.Parameters.Add("@CODPOS", SqlDbType.Int).Value = Convert.ToInt32(em.Codpos);
                cmd.Parameters.Add("@SEXO", SqlDbType.NVarChar).Value = em.Sexo;
                cmd.Parameters.Add("@ELIMINADO", SqlDbType.Bit).Value = em.Eliminado;
                cmd.Parameters.Add("@PROPIETARIO", SqlDbType.Bit).Value = em.Propietario;

                value = cmd.ExecuteNonQuery();
                return value == 1;
            }

        }

        #endregion

        #region Getting Data

        public static User[] GetAll(SqlConnection cnx)
        {
            List<User> ls = new List<User>();


            string SQL = string.Format("SELECT * FROM {0} ORDER BY ID;",
                UserCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        ls.Add(UserCAD.ParseToObject(rd));
                    }
                }
            }

            return ls.ToArray();
        }


        public static User GetById(SqlConnection cnx, int id)
        {

            string SQL = string.Format("SELECT * FROM {0} WHERE ID = @ID;",
                UserCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    if (rd.Read())
                    {
                        return UserCAD.ParseToObject(rd);
                    }

                    return null;
                }
            }
        }

        public static User GetByNick(SqlConnection cnx, string nick)
        {

            string SQL = string.Format("SELECT * FROM {0} WHERE USUARIO = @USUARIO;",
                UserCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@USUARIO", SqlDbType.NVarChar).Value = nick;

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    if (rd.Read())
                    {
                        return UserCAD.ParseToObject(rd);
                    }

                    return null;
                }
            }
        }

        public static User GetByMail(SqlConnection cnx, string mail)
        {

            string SQL = string.Format("SELECT * FROM {0} WHERE EMAIL = @EMAIL;",
                UserCAD.TableName);

            using (SqlCommand cmd = new SqlCommand(SQL, cnx))
            {
                cmd.Parameters.Add("@EMAIL", SqlDbType.NVarChar).Value = mail;

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    if (rd.Read())
                    {
                        return UserCAD.ParseToObject(rd);
                    }

                    return null;
                }
            }
        }



        #endregion

        #region PARSE TO OBJECT

        private static User ParseToObject(SqlDataReader rd)
        {
            using (User us = new User())
            {
                us.Id = Convert.ToInt32(rd["ID"]);
                us.Email = Convert.ToString(rd["EMAIL"]);
                us.Usuario = Convert.ToString(rd["USUARIO"]);
                us.Password = Convert.ToString(rd["PASSWORD"]);
                us.Nombre = Convert.ToString(rd["NOMBRE"]);
                us.Apellidos = Convert.ToString(rd["APELLIDOS"]);               
                us.Telefono = Convert.ToInt32(rd["TELEFONO"]);
				us.Provincia = Convert.ToString(rd["PROVINCIA"]);
                us.Ciudad = Convert.ToString(rd["CIUDAD"]);
				us.Codpos = Convert.ToInt32(rd["CODPOS"]);
                us.Sexo = Convert.ToInt32(rd["SEXO"]);
				us.Eliminado = Convert.ToBoolean(rd["ELIMINADO"]);
				us.Propietario = Convert.ToBoolean(rd["PROPIETARIO"]);
				
				
                return us;
            }
        }



        #endregion
    }
}


