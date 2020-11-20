func @_Prueba_Imagen.Startup.ConfigureServices$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :20 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :20 :38)
cbde.store %_services, %0 : memref<none> loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :20 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :22 :12) // Not a variable of known type: services
%2 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :22 :12) // services.AddControllers() (InvocationExpression)
%3 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :23 :12) // Not a variable of known type: services
%4 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :23 :12) // services.AddTransient<IServicioImagen,ServicioImagen>() (InvocationExpression)
%5 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :24 :12) // Not a variable of known type: services
%6 = cbde.unknown : none loc("J:\\Proyectos\\Prueba_Imagen\\Prueba_Imagen\\Startup.cs" :24 :12) // services.AddTransient<IServicioSeguridad, ServicioSeguridad>() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Configure(none, none), it contains poisonous unsupported syntaxes

