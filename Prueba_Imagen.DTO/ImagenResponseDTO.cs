namespace Prueba_Imagen.DTO
{
    public class ImagenResponseDTO
    {
        public bool RequiereModificar { get; set; }
        public string Mensaje { get; set; }
        public PropiedadesImagenDTO ImagenOriginal { get; set; }
        public PropiedadesImagenDTO ImagenModificada { get; set; }
    }
}
