using System.ComponentModel.DataAnnotations;

namespace Prueba_Imagen.DTO
{
    public class ImagenRutaDto
    {
        [Required(AllowEmptyStrings = false, ErrorMessage = "Debe ingresar una ruta con su respectivo archivo.")]
        public string Ruta { get; set; }
    }
}
