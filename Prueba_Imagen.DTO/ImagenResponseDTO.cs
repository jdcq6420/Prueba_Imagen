namespace Prueba_Imagen.DTO
{
    public class ImagenResponseDto
    {
        public bool RequiereModificar { get; set; }
        public string Mensaje { get; set; }
        public PropiedadesImagenDto ImagenOriginal { get; set; }
        public PropiedadesImagenDto ImagenModificada { get; set; }
        public ErrorResponseDto Error { get; set; }
    }
}
