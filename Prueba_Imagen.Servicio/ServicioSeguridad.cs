using Prueba_Imagen.Servicio.Interface;
using Prueba_Imagen.Utilidades.Constantes;
using Prueba_Imagen.Utilidades.Enum;
using System;
using System.IO;
using System.Linq;

namespace Prueba_Imagen.Servicio
{
    public class ServicioSeguridad : IServicioSeguridad
    {
        public bool existeArchivo(string ruta)
        {
            return File.Exists(ruta);
        }

        public bool esImagen(string imagen, int origen)
        {
            byte[] bytes = new byte[] { };
            switch (origen)
            {
                case (int)Origen.ruta:
                    bytes = File.ReadAllBytes(imagen);
                    break;

                case (int)Origen.base64:
                    bytes = DeseralizarImagen(imagen);
                    break;
            }
            try
            {
                if (EncabezadosImagen.jpeg.SequenceEqual(bytes.Take(EncabezadosImagen.jpeg.Length)) ||
                    EncabezadosImagen.jpeg2.SequenceEqual(bytes.Take(EncabezadosImagen.jpeg2.Length)))
                {
                    return true;
                }
                return false;
            }
            catch (Exception e)
            {
                throw;
            }
            finally
            {
                Array.Clear(bytes, 0, bytes.Length);
            }
        }

        private byte[] DeseralizarImagen(string imagen)
        {
            byte[] respuesta = Convert.FromBase64String(imagen);
            return respuesta;
        }
    }
}
