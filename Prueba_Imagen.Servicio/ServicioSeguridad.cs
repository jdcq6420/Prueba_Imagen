using Prueba_Imagen.Servicio.Interface;
using Prueba_Imagen.Utilidades.Constantes;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Prueba_Imagen.Servicio
{
    public class ServicioSeguridad : IServicioSeguridad
    {
        public bool existeArchivo(string ruta)
        {
            return File.Exists(ruta);
        }

        public bool esImagen(string ruta)
        {
            byte[] bytes = File.ReadAllBytes(ruta);
            try
            {
                if (EncabezadosImagen.bmp.SequenceEqual(bytes.Take(EncabezadosImagen.bmp.Length)) ||
                    EncabezadosImagen.png.SequenceEqual(bytes.Take(EncabezadosImagen.png.Length)) ||
                    EncabezadosImagen.tiff.SequenceEqual(bytes.Take(EncabezadosImagen.tiff.Length)) ||
                    EncabezadosImagen.tiff2.SequenceEqual(bytes.Take(EncabezadosImagen.tiff2.Length)) ||
                    EncabezadosImagen.jpeg.SequenceEqual(bytes.Take(EncabezadosImagen.jpeg.Length)) ||
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
                Array.Clear(bytes,0,bytes.Length);
            }
        }
    }
}
