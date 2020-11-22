using Microsoft.AspNetCore.Mvc;
using Prueba_Imagen.DTO;
using Prueba_Imagen.Servicio.Interface;
using Prueba_Imagen.Utilidades.Enum;
using Prueba_Imagen.Utilidades.Recursos;
using System;
using System.Drawing;

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
        /// Método para captura de imagen usando la ruta
        /// </summary>
        /// <param name="rutaImagen"></param>
        /// <returns></returns>
        [HttpPost("Ruta")]
        public IActionResult ImagenRuta([FromBody] ImagenRutaDto rutaImagen)
        {
            ImagenResponseDto imagenResponse = new ImagenResponseDto()
            {
                ImagenOriginal = new PropiedadesImagenDto(),
                Mensaje = string.Empty
            };
            if (_servicioSeguridad.existeArchivo(rutaImagen.Ruta))
            {
                if (_servicioSeguridad.esImagen(rutaImagen.Ruta, (int)Origen.ruta))
                {
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
                    imagenResponse.Error.Error = Mensajes.FormatoNoValido;
                    return BadRequest(imagenResponse);
                    //return BadRequest(new ErrorResponseDto() { Error = Mensajes.FormatoNoValido });
                }
            }
            else
            {
                imagenResponse.Error.Error = Mensajes.ArchivoNoExiste;
                return BadRequest(imagenResponse);
                //return BadRequest(new ErrorResponseDto() { Error = Mensajes.ArchivoNoExiste });
            }
        }

        /// <summary>
        /// Método para captura y procesamiento de imagen
        /// </summary>
        /// <param name="imagen"></param>
        [HttpPost]
        public IActionResult Post([FromBody] ImagenRequestDto imagen)
        {
            ImagenResponseDto imagenResponse = new ImagenResponseDto()
            {
                ImagenOriginal = new PropiedadesImagenDto(),
                Mensaje = string.Empty
            };
            try
            {
                if (_servicioSeguridad.esImagen(imagen.imagenBase64, (int)Origen.base64))
                {
                    imagenResponse = _servicioImagen.ProcesarImagen(_servicioImagen.DecodificaImagen(imagen.imagenBase64));
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
                    imagenResponse.Error.Error = Mensajes.FormatoNoValido;
                    return BadRequest(imagenResponse);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
