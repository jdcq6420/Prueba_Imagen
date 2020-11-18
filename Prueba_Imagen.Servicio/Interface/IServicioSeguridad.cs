using System;
using System.Collections.Generic;
using System.Text;

namespace Prueba_Imagen.Servicio.Interface
{
    public interface IServicioSeguridad
    {
        bool existeArchivo(string ruta);
        bool esImagen(string ruta);
    }
}
