using System.ComponentModel.DataAnnotations;

namespace Prueba_Imagen.DTO
{
    public class ImagenRequestDto
    {
        [Required(AllowEmptyStrings = false, ErrorMessage = "Debe ingresar una ruta con su respectivo archivo.")]
        public string Ruta { get; set; }

        public string imagenStream { get; set; }
    }
}
