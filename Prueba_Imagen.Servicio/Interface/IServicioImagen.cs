using Prueba_Imagen.DTO;
using System.Drawing;
using System.Threading.Tasks;

namespace Prueba_Imagen.Servicio.Interface
{
    public interface IServicioImagen
    {
        string Orientacion(Size dimensiones);
        PropiedadesImagenDTO CambiarTamaño(Size dimensiones, string orientacion);
        //Task<ImagenResponseDTO> ProcesarImagen(Image imagen);
        ImagenResponseDTO ProcesarImagen(Image imagen);
    }
}
