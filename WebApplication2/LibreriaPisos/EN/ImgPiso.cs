using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibreriaPisos.EN
{
    public class ImgPiso : Object , IDisposable
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
        ~ImgPiso()
        {
            this.Dispose(false);
        }

        #endregion

        #region private properties

        private int id = -1;
        private int idPiso = -1;
        private string ruta = "";

        #endregion



        #region public properties

        ImgPiso() { 
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
        public string Ruta
        {
            get { return ruta; }
            set { ruta = value; }
        }
        #endregion
    }
}
