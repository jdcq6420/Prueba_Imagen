using Prueba_Imagen.DTO;
using System.Drawing;

namespace Prueba_Imagen.Servicio.Interface
{
    public interface IServicioImagen
    {
        string Orientacion(Size dimensiones);
        PropiedadesImagenDto CambiarTamaño(Size dimensiones, string orientacion);
        ImagenResponseDto ProcesarImagen(Image imagen);
        public Image DecodificaImagen(string imagenBase64);
    }
}
