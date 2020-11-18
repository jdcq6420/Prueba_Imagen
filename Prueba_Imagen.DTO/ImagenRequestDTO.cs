using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Prueba_Imagen.DTO
{
    public class ImagenRequestDTO
    {
        [Required(AllowEmptyStrings = false, ErrorMessage = "Debe ingresar una ruta con su respectivo archivo.")]
        public string Ruta { get; set; }
    }
}
