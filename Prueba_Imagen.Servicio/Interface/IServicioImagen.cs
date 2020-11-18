using Prueba_Imagen.DTO;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;

namespace Prueba_Imagen.Servicio.Interface
{
    public interface IServicioImagen
    {
        string Orientacion(Size dimensiones);
        PropiedadesImagenDTO CambiarTamaño(Size dimensiones, string orientacion);
        Task<ImagenResponseDTO> ProcesarImagen(Image imagen);
    }
}
