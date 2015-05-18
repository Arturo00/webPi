using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibreriaPisos.EN
{
    public class MenPiso : Object , IDisposable
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
        ~MenPiso()
        {
            this.Dispose(false);
        }

        #endregion

        #region private properties
        private int id = -1;
        private int idPiso = -1;
        private string mensaje = "";
        private int idUser = -1;
        private int puntuacion = -1;

        #endregion


        #region public properties


        public MenPiso() { 
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public int IdPiso
        {
            get { return idPiso; }
            set { idPiso = value; }
        }
        public string Mensaje
        {
            get { return mensaje; }
            set { mensaje = value; }
        }

        public int IdUser
        {
            get { return idUser; }
            set { idUser = value; }
        }

        public int Puntuacion
        {
            get { return puntuacion; }
            set { puntuacion = value; }
        }
        #endregion
    }
}
