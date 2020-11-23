func @_Prueba_Imagen.Servicio.ServicioSeguridad.existeArchivo$string$(none) -> i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :11 :8) {
^entry (%_ruta : none):
%0 = cbde.alloca none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :11 :34)
cbde.store %_ruta, %0 : memref<none> loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :11 :34)
br ^0

^0: // JumpBlock
// Entity from another assembly: File
%1 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :13 :31) // Not a variable of known type: ruta
%2 = cbde.unknown : i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :13 :19) // File.Exists(ruta) (InvocationExpression)
return %2 : i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :13 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function esImagen(none, i32), it contains poisonous unsupported syntaxes

func @_Prueba_Imagen.Servicio.ServicioSeguridad.DeseralizarImagen$string$(none) -> none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :48 :8) {
^entry (%_imagen : none):
%0 = cbde.alloca none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :48 :41)
cbde.store %_imagen, %0 : memref<none> loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :48 :41)
br ^0

^0: // JumpBlock
// Entity from another assembly: Convert
%1 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :50 :56) // Not a variable of known type: imagen
%2 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :50 :31) // Convert.FromBase64String(imagen) (InvocationExpression)
%4 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :51 :19) // Not a variable of known type: respuesta
return %4 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioSeguridad.cs" :51 :12)

^1: // ExitBlock
cbde.unreachable

}
