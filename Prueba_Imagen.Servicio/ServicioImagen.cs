using Prueba_Imagen.DTO;
using Prueba_Imagen.Servicio.Interface;
using Prueba_Imagen.Utilidades.Enum;
using System;
using System.Drawing;

namespace Prueba_Imagen.Servicio
{
    public class ServicioImagen : IServicioImagen
    {
        public string Orientacion(Size dimensiones)
        {
            if (dimensiones.Width > dimensiones.Height)
            {
                return Orientaciones.Horizontal.ToString();
            }
            else if (dimensiones.Width < dimensiones.Height)
            {
                return Orientaciones.Vertical.ToString();
            }
            return Orientaciones.Vertical.ToString();
        }

        public PropiedadesImagenDto CambiarTamaño(Size dimensiones, string orientacion)
        {
            double radio; double radioX = 0; double radioY = 0;

            switch (orientacion)
            {
                case "Horizontal":
                    radioX = (double)DimensionesA4Horizontal.Ancho / dimensiones.Width;
                    radioY = (double)DimensionesA4Horizontal.Alto / dimensiones.Height;
                    break;

                case "Vertical":
                    radioX = (double)DimensionesA4Vertical.Ancho / dimensiones.Width;
                    radioY = (double)DimensionesA4Vertical.Alto / dimensiones.Height;
                    break;
            }

            radio = radioX < radioY ? radioX : radioY;
            PropiedadesImagenDto propiedades = new PropiedadesImagenDto()
            {
                Dimensiones = new DimensionesDto()
                {
                    Ancho = Convert.ToInt32(Math.Floor(radio * dimensiones.Width)),
                    Alto = Convert.ToInt32(Math.Floor(radio * dimensiones.Height))
                },
                Orientacion = orientacion
            };
            return propiedades;

        }

        public ImagenResponseDto ProcesarImagen(Image imagen)
        {
            ImagenResponseDto respuesta = new ImagenResponseDto()
            {
                RequiereModificar = false,
                ImagenOriginal = new PropiedadesImagenDto()
                {
                    Dimensiones = new DimensionesDto()
                    {
                        Ancho = imagen.Width,
                        Alto = imagen.Height
                    }
                }
            };
            string orientacion = Orientacion(imagen.Size);
            respuesta.ImagenOriginal.Orientacion = orientacion;

            switch (orientacion)
            {
                case "Horizontal":
                    if (imagen.Width > (int)DimensionesA4Horizontal.Ancho ||
                        imagen.Height > (int)DimensionesA4Horizontal.Alto)
                    {
                        respuesta.RequiereModificar = true;
                        respuesta.ImagenModificada = CambiarTamaño(imagen.Size, orientacion);
                    }
                    break;

                case "Vertical":
                    if (imagen.Width > (int)DimensionesA4Vertical.Ancho ||
                        imagen.Height > (int)DimensionesA4Vertical.Alto)
                    {
                        respuesta.RequiereModificar = true;
                        respuesta.ImagenModificada = CambiarTamaño(imagen.Size, orientacion);
                    }
                    break;
            }
            return respuesta;
        }
    }
}
