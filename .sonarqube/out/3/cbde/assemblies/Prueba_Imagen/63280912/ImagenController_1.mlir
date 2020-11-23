func @_Prueba_Imagen.Controllers.ImagenController.ImagenRuta$Prueba_Imagen.DTO.ImagenRutaDto$(none) -> none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :28 :8) {
^entry (%_rutaImagen : none):
%0 = cbde.alloca none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :29 :40)
cbde.store %_rutaImagen, %0 : memref<none> loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :29 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :31 :47) // new ImagenResponseDto()              {                  ImagenOriginal = new PropiedadesImagenDto(),                  Mensaje = string.Empty,                  Error = new ErrorResponseDto() { Error = string.Empty}              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :33 :33) // new PropiedadesImagenDto() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :34 :26) // string (PredefinedType)
%4 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :34 :26) // string.Empty (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :35 :24) // new ErrorResponseDto() { Error = string.Empty} (ObjectCreationExpression)
%6 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :35 :57) // string (PredefinedType)
%7 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :35 :57) // string.Empty (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :37 :16) // Not a variable of known type: _servicioSeguridad
%10 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :37 :49) // Not a variable of known type: rutaImagen
%11 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :37 :49) // rutaImagen.Ruta (SimpleMemberAccessExpression)
%12 = cbde.unknown : i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :37 :16) // _servicioSeguridad.existeArchivo(rutaImagen.Ruta) (InvocationExpression)
cond_br %12, ^1, ^2 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :37 :16)

^1: // BinaryBranchBlock
%13 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :39 :20) // Not a variable of known type: _servicioSeguridad
%14 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :39 :48) // Not a variable of known type: rutaImagen
%15 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :39 :48) // rutaImagen.Ruta (SimpleMemberAccessExpression)
// Entity from another assembly: Origen
%16 = constant unit loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :39 :70) // Origen.ruta (SimpleMemberAccessExpression)
%17 = cbde.unknown : i32 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :39 :65) // (int)Origen.ruta (CastExpression)
%18 = cbde.unknown : i1 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :39 :20) // _servicioSeguridad.esImagen(rutaImagen.Ruta, (int)Origen.ruta) (InvocationExpression)
cond_br %18, ^3, ^4 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :39 :20)

^3: // BinaryBranchBlock
// Entity from another assembly: Image
%19 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :41 :50) // Not a variable of known type: rutaImagen
%20 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :41 :50) // rutaImagen.Ruta (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :41 :35) // Image.FromFile(rutaImagen.Ruta) (InvocationExpression)
%23 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :42 :37) // Not a variable of known type: _servicioImagen
%24 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :42 :68) // Not a variable of known type: imagen
%25 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :42 :37) // _servicioImagen.ProcesarImagen(imagen) (InvocationExpression)
%26 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :43 :20) // Not a variable of known type: imagen
%27 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :43 :20) // imagen.Dispose() (InvocationExpression)
%28 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :45 :24) // Not a variable of known type: imagenResponse
%29 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :45 :42) // null (NullLiteralExpression)
%30 = cbde.unknown : i1  loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :45 :24) // comparison of unknown type: imagenResponse != null
cond_br %30, ^5, ^6 loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :45 :24)

^5: // JumpBlock
%31 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :47 :24) // Not a variable of known type: imagenResponse
%32 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :47 :24) // imagenResponse.Mensaje (SimpleMemberAccessExpression)
// Entity from another assembly: Mensajes
%33 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :47 :49) // Mensajes.ProcesadaExitosa (SimpleMemberAccessExpression)
// Entity from another assembly: Ok
%34 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :48 :34) // Not a variable of known type: imagenResponse
%35 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :48 :31) // Ok(imagenResponse) (InvocationExpression)
return %35 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :48 :24)

^6: // JumpBlock
%36 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :50 :20) // Not a variable of known type: imagenResponse
%37 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :50 :20) // imagenResponse.Mensaje (SimpleMemberAccessExpression)
// Entity from another assembly: Mensajes
%38 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :50 :45) // Mensajes.ProcesadaFallida (SimpleMemberAccessExpression)
// Entity from another assembly: BadRequest
%39 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :51 :38) // Not a variable of known type: imagenResponse
%40 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :51 :27) // BadRequest(imagenResponse) (InvocationExpression)
return %40 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :51 :20)

^4: // JumpBlock
%41 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :55 :20) // Not a variable of known type: imagenResponse
%42 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :55 :20) // imagenResponse.Error (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :55 :20) // imagenResponse.Error.Error (SimpleMemberAccessExpression)
// Entity from another assembly: Mensajes
%44 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :55 :49) // Mensajes.FormatoNoValido (SimpleMemberAccessExpression)
// Entity from another assembly: BadRequest
%45 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :56 :38) // Not a variable of known type: imagenResponse
%46 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :56 :27) // BadRequest(imagenResponse) (InvocationExpression)
return %46 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :56 :20)

^2: // JumpBlock
%47 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :61 :16) // Not a variable of known type: imagenResponse
%48 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :61 :16) // imagenResponse.Error (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :61 :16) // imagenResponse.Error.Error (SimpleMemberAccessExpression)
// Entity from another assembly: Mensajes
%50 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :61 :45) // Mensajes.ArchivoNoExiste (SimpleMemberAccessExpression)
// Entity from another assembly: BadRequest
%51 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :62 :34) // Not a variable of known type: imagenResponse
%52 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :62 :23) // BadRequest(imagenResponse) (InvocationExpression)
return %52 : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Controllers\\ImagenController.cs" :62 :16)

^7: // ExitBlock
cbde.unreachable

}
// Skipping function Post(none), it contains poisonous unsupported syntaxes

