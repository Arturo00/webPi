using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibreriaPisos.EN
{
    public class User : Object , IDisposable
    {

         #region IDisposable Members

        private bool disposed = false;

        public void Dispose()
        {
            this.Dispose(true);
            GC.SuppressFinalize(this);
        }
        protected void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                }
            }
            this.disposed = true;
        }
        ~User()
        {
            this.Dispose(false);
        }

        #endregion
        #region private properties

        private int id = -1;
        private string email = "";
        private string usuario = "";
        private string password = "";
        private string nombre = "";
        private string apellidos = "";
        private int telefono = -1;
        private int codpos = -1;
        private int sexo = -1;
        private string provincia = "";
        private string ciudad = "";
        private bool propietario = false;
        private bool eliminado = false;

        #endregion

        #region public properties


        public User() { 
        }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Apellidos
        {
            get { return apellidos; }
            set { apellidos = value; }
        }


        public int Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }


        public string Provincia
        {
            get { return provincia; }
            set { provincia = value; }
        }


        public string Ciudad
        {
            get { return ciudad; }
            set { ciudad = value; }
        }


        public int Codpos
        {
            get { return codpos; }
            set { codpos = value; }
        }


        public int Sexo
        {
            get { return sexo; }
            set { sexo = value; }
        }


        public bool Eliminado
        {
            get { return eliminado; }
            set { eliminado = value; }
        }


        public bool Propietario
        {
            get { return propietario; }
            set { propietario = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }


        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

        #endregion
    }
}
