using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibreriaPisos.EN
{
    public class Piso : Object , IDisposable
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
        ~Piso()
        {
            this.Dispose(false);
        }

        #endregion

        #region private properties

        private int id = -1;
        private int idUser = -1;
        private string pais = "Spain";
        private string ciudad = "";
        private string poblacion = "";
        private string calle = "";
        private int codpos = -1;
        private decimal precio = 0;
        private int ocupantes = -1;
        private bool alquilado = false;
        private string descripcion = "";
        private int puntuacion = -1;
        private bool eliminado = false;
        private string imgPiso = "";

        

        #endregion

        #region public properties

        public Piso() { 
        }
        public int Id
        {
            get { return id; }
            set { id = value; }
        }



        public int IdUser
        {
            get { return idUser; }
            set { idUser = value; }
        }


        public string Pais
        {
            get { return pais; }
            set { pais = value; }
        }

        public string Ciudad
        {
            get { return ciudad; }
            set { ciudad = value; }
        }
        public string Poblacion
        {
            get { return poblacion; }
            set { poblacion = value; }
        }


        public string Calle
        {
            get { return calle; }
            set { calle = value; }
        }


        public int Codpos
        {
            get { return codpos; }
            set { codpos = value; }
        }


        public decimal Precio
        {
            get { return precio; }
            set { precio = value; }
        }


        public int Ocupantes
        {
            get { return ocupantes; }
            set { ocupantes = value; }
        }


        public bool Alquilado
        {
            get { return alquilado; }
            set { alquilado = value; }
        }


        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }


        public int Puntuacion
        {
            get { return puntuacion; }
            set { puntuacion = value; }
        }


        public bool Eliminado
        {
            get { return eliminado; }
            set { eliminado = value; }
        }
        public string ImgPiso
        {
            get { return imgPiso; }
            set { imgPiso = value; }
        }
        #endregion
    }
}
