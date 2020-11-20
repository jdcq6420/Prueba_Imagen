—"
HJ:\Proyectos\Prueba_Imagen\Prueba_Imagen\Controllers\ImagenController.cs
	namespace

 	
Prueba_Imagen


 
.

 
Controllers

 #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ImagenController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
IServicioImagen (
_servicioImagen) 8
;8 9
private 
readonly 
IServicioSeguridad +
_servicioSeguridad, >
;> ?
public 
ImagenController 
(  
IServicioImagen  /
servicioImagen0 >
,> ?
IServicioSeguridad@ R
servicioSeguridadS d
)d e
{ 	
_servicioImagen 
= 
servicioImagen ,
;, -
_servicioSeguridad 
=  
servicioSeguridad! 2
;2 3
} 	
[ 	
HttpPost	 
] 
public 
IActionResult 
Post !
(! "
[" #
FromBody# +
]+ ,
ImagenRequestDto- =

rutaImagen> H
)H I
{ 	
try   
{!! 
if"" 
("" 
_servicioSeguridad"" %
.""% &
existeArchivo""& 3
(""3 4

rutaImagen""4 >
.""> ?
Ruta""? C
)""C D
)""D E
{## 
if$$ 
($$ 
_servicioSeguridad$$ )
.$$) *
esImagen$$* 2
($$2 3

rutaImagen$$3 =
.$$= >
Ruta$$> B
)$$B C
)$$C D
{%% 
ImagenResponseDto&& )
imagenResponse&&* 8
=&&9 :
new&&; >
ImagenResponseDto&&? P
(&&P Q
)&&Q R
{'' 
ImagenOriginal(( *
=((+ ,
new((- 0 
PropiedadesImagenDto((1 E
(((E F
)((F G
,((G H
Mensaje)) #
=))$ %
string))& ,
.)), -
Empty))- 2
}** 
;** 
Image,, 
imagen,, $
=,,% &
Image,,' ,
.,,, -
FromFile,,- 5
(,,5 6

rutaImagen,,6 @
.,,@ A
Ruta,,A E
),,E F
;,,F G
imagenResponse-- &
=--' (
_servicioImagen--) 8
.--8 9
ProcesarImagen--9 G
(--G H
imagen--H N
)--N O
;--O P
imagen.. 
... 
Dispose.. &
(..& '
)..' (
;..( )
if00 
(00 
imagenResponse00 *
!=00+ -
null00. 2
)002 3
{11 
imagenResponse22 *
.22* +
Mensaje22+ 2
=223 4
Mensajes225 =
.22= >
ProcesadaExitosa22> N
;22N O
return33 "
Ok33# %
(33% &
imagenResponse33& 4
)334 5
;335 6
}44 
imagenResponse55 &
.55& '
Mensaje55' .
=55/ 0
Mensajes551 9
.559 :
ProcesadaFallida55: J
;55J K
return66 

BadRequest66 )
(66) *
imagenResponse66* 8
)668 9
;669 :
}77 
else88 
{99 
return:: 

BadRequest:: )
(::) *
new::* -
ErrorResponseDto::. >
(::> ?
)::? @
{::A B
Error::C H
=::I J
Mensajes::K S
.::S T
FormatoNoValido::T c
}::d e
)::e f
;::f g
};; 
}<< 
else== 
{>> 
return?? 

BadRequest?? %
(??% &
new??& )
ErrorResponseDto??* :
(??: ;
)??; <
{??= >
Error??? D
=??E F
Mensajes??G O
.??O P
ArchivoNoExiste??P _
}??` a
)??a b
;??b c
}@@ 
}AA 
catchBB 
(BB 
	ExceptionBB 
)BB 
{CC 
throwEE 
;EE 
}FF 
}GG 	
}HH 
}II Ž

3J:\Proyectos\Prueba_Imagen\Prueba_Imagen\Program.cs
	namespace 	
Prueba_Imagen
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ÿ
3J:\Proyectos\Prueba_Imagen\Prueba_Imagen\Startup.cs
	namespace		 	
Prueba_Imagen		
 
{

 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddControllers #
(# $
)$ %
;% &
services 
. 
AddTransient !
<! "
IServicioImagen" 1
,1 2
ServicioImagen2 @
>@ A
(A B
)B C
;C D
services 
. 
AddTransient !
<! "
IServicioSeguridad" 4
,4 5
ServicioSeguridad6 G
>G H
(H I
)I J
;J K
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{   
app!! 
.!! %
UseDeveloperExceptionPage!! -
(!!- .
)!!. /
;!!/ 0
}"" 
app$$ 
.$$ 
UseHttpsRedirection$$ #
($$# $
)$$$ %
;$$% &
app&& 
.&& 

UseRouting&& 
(&& 
)&& 
;&& 
app(( 
.(( 
UseAuthorization((  
(((  !
)((! "
;((" #
app** 
.** 
UseEndpoints** 
(** 
	endpoints** &
=>**' )
{++ 
	endpoints,, 
.,, 
MapControllers,, (
(,,( )
),,) *
;,,* +
}-- 
)-- 
;-- 
}.. 	
}// 
}00 