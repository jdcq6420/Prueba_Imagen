func @_Prueba_Imagen.Servicio.ServicioImagen.Orientacion$System.Drawing.Size$(none) -> none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :11 :8) {
^entry (%_dimensiones : none):
%0 = cbde.alloca none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :11 :34)
cbde.store %_dimensiones, %0 : memref<none> loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :11 :34)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :13 :16) // Not a variable of known type: dimensiones
%2 = cbde.unknown : i32 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :13 :16) // dimensiones.Width (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :13 :36) // Not a variable of known type: dimensiones
%4 = cbde.unknown : i32 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :13 :36) // dimensiones.Height (SimpleMemberAccessExpression)
%5 = cmpi "sgt", %2, %4 : i32 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :13 :16)
cond_br %5, ^1, ^2 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :13 :16)

^1: // JumpBlock
// Entity from another assembly: Orientaciones
%6 = constant unit loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :15 :23) // Orientaciones.Horizontal (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :15 :23) // Orientaciones.Horizontal.ToString() (InvocationExpression)
return %7 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :15 :16)

^2: // BinaryBranchBlock
%8 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :17 :21) // Not a variable of known type: dimensiones
%9 = cbde.unknown : i32 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :17 :21) // dimensiones.Width (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :17 :41) // Not a variable of known type: dimensiones
%11 = cbde.unknown : i32 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :17 :41) // dimensiones.Height (SimpleMemberAccessExpression)
%12 = cmpi "slt", %9, %11 : i32 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :17 :21)
cond_br %12, ^3, ^4 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :17 :21)

^3: // JumpBlock
// Entity from another assembly: Orientaciones
%13 = constant unit loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :19 :23) // Orientaciones.Vertical (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :19 :23) // Orientaciones.Vertical.ToString() (InvocationExpression)
return %14 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :19 :16)

^4: // JumpBlock
// Entity from another assembly: Orientaciones
%15 = constant unit loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :21 :19) // Orientaciones.Vertical (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :21 :19) // Orientaciones.Vertical.ToString() (InvocationExpression)
return %16 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen.Servicio\\ServicioImagen.cs" :21 :12)

^5: // ExitBlock
cbde.unreachable

}
// Skipping function CambiarTamaño(none, none), it contains poisonous unsupported syntaxes

// Skipping function ProcesarImagen(none), it contains poisonous unsupported syntaxes

