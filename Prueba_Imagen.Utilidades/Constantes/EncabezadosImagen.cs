using System.Text;

namespace Prueba_Imagen.Utilidades.Constantes
{
    public static class EncabezadosImagen
    {
        public static readonly byte[] bmp = Encoding.ASCII.GetBytes("BM"); // Formato bmp
        public static readonly byte[] png = new byte[] { 137, 80, 78, 71 }; // Formato png
        public static readonly byte[] tiff = new byte[] { 73, 73, 42 }; // Formato tiff
        public static readonly byte[] tiff2 = new byte[] { 77, 77, 42 }; // Formato tiff
        public static readonly byte[] jpeg = new byte[] { 255, 216, 255, 224 }; // Formato jpeg
        public static readonly byte[] jpeg2 = new byte[] { 255, 216, 255, 225 }; // Formato canon jpeg

    }
}
