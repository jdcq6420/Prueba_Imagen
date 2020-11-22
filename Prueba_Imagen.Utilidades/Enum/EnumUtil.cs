namespace Prueba_Imagen.Utilidades.Enum
{
    public enum Orientaciones
    {
        Horizontal, Vertical
    }

    public enum DimensionesA4Vertical
    {
        Ancho = 796,
        Alto = 1123
    }

    public enum DimensionesA4Horizontal
    {
        Ancho = 1123,
        Alto = 796
    }

    public enum FormatosImagen
    {
        bmp, jpeg, gif, tiff, png
    }

    public enum Origen
    {
        ruta, base64
    }
}
