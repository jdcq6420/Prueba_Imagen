namespace Prueba_Imagen.Servicio.Interface
{
    public interface IServicioSeguridad
    {
        bool existeArchivo(string ruta);
        bool esImagen(string ruta);
    }
}
