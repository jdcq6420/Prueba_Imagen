func @_Prueba_Imagen.Servicio.ServicioSeguridad.existeArchivo$string$(none) -> i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :10 :8) {
^entry (%_ruta : none):
%0 = cbde.alloca none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :10 :34)
cbde.store %_ruta, %0 : memref<none> loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :10 :34)
br ^0

^0: // JumpBlock
// Entity from another assembly: File
%1 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :12 :31) // Not a variable of known type: ruta
%2 = cbde.unknown : i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :12 :19) // File.Exists(ruta) (InvocationExpression)
return %2 : i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function esImagen(none), it contains poisonous unsupported syntaxes

