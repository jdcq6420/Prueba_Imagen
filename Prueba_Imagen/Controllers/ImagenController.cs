using Microsoft.AspNetCore.Mvc;
using Prueba_Imagen.DTO;
using Prueba_Imagen.Servicio.Interface;
using Prueba_Imagen.Utilidades.Recursos;
using System;
using System.Drawing;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Prueba_Imagen.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ImagenController : ControllerBase
    {
        private readonly IServicioImagen _servicioImagen;
        private readonly IServicioSeguridad _servicioSeguridad;

        public ImagenController(IServicioImagen servicioImagen, IServicioSeguridad servicioSeguridad)
        {
            _servicioImagen = servicioImagen;
            _servicioSeguridad = servicioSeguridad;
        }

        /// <summary>
        /// Método para captura y procesamiento de imagen
        /// </summary>
        /// <param name="rutaImagen"></param>
        [HttpPost]
        public IActionResult Post([FromBody] ImagenRequestDto rutaImagen)
        {
            try
            {   
                if(_servicioSeguridad.existeArchivo(rutaImagen.Ruta))
                {
                    if(_servicioSeguridad.esImagen(rutaImagen.Ruta))
                    {
                        ImagenResponseDto imagenResponse = new ImagenResponseDto()
                        {
                            ImagenOriginal = new PropiedadesImagenDto(),
                            Mensaje = string.Empty
                        };

                        Image imagen = Image.FromFile(rutaImagen.Ruta);
                        imagenResponse = _servicioImagen.ProcesarImagen(imagen);
                        imagen.Dispose();

                        if (imagenResponse != null)
                        {
                            imagenResponse.Mensaje = Mensajes.ProcesadaExitosa;
                            return Ok(imagenResponse);
                        }
                        imagenResponse.Mensaje = Mensajes.ProcesadaFallida;
                        return BadRequest(imagenResponse);
                    }
                    else
                    {
                        return BadRequest(new ErrorResponseDto() { Error = Mensajes.FormatoNoValido });
                    }
                }
                else
                {
                    return BadRequest(new ErrorResponseDto() { Error = Mensajes.ArchivoNoExiste });
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
