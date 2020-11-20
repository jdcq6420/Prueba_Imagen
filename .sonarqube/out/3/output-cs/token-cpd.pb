ü"
HJ:\Proyectos\Prueba_Imagen\Prueba_Imagen\Controllers\ImagenController.cs
	namespace 	
Prueba_Imagen
 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ImagenController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
IServicioImagen (
_servicioImagen) 8
;8 9
private 
readonly 
IServicioSeguridad +
_servicioSeguridad, >
;> ?
public 
ImagenController 
(  
IServicioImagen  /
servicioImagen0 >
,> ?
IServicioSeguridad@ R
servicioSeguridadS d
)d e
{ 	
_servicioImagen 
= 
servicioImagen ,
;, -
_servicioSeguridad 
=  
servicioSeguridad! 2
;2 3
} 	
[ 	
HttpPost	 
] 
public   
async   
Task   
<   
IActionResult   '
>  ' (
Post  ) -
(  - .
[  . /
FromBody  / 7
]  7 8
ImagenRequestDTO  9 I

rutaImagen  J T
)  T U
{!! 	
try"" 
{## 
if$$ 
($$ 
_servicioSeguridad$$ %
.$$% &
existeArchivo$$& 3
($$3 4

rutaImagen$$4 >
.$$> ?
Ruta$$? C
)$$C D
)$$D E
{%% 
if&& 
(&& 
_servicioSeguridad&& )
.&&) *
esImagen&&* 2
(&&2 3

rutaImagen&&3 =
.&&= >
Ruta&&> B
)&&B C
)&&C D
{'' 
ImagenResponseDTO(( )
imagenResponse((* 8
=((9 :
new((; >
ImagenResponseDTO((? P
(((P Q
)((Q R
{)) 
ImagenOriginal** *
=**+ ,
new**- 0 
PropiedadesImagenDTO**1 E
(**E F
)**F G
,**G H
Mensaje++ #
=++$ %
string++& ,
.++, -
Empty++- 2
},, 
;,, 
Image.. 
imagen.. $
=..% &
Image..' ,
..., -
FromFile..- 5
(..5 6

rutaImagen..6 @
...@ A
Ruta..A E
)..E F
;..F G
imagenResponse// &
=//' (
await//) .
_servicioImagen/// >
.//> ?
ProcesarImagen//? M
(//M N
imagen//N T
)//T U
;//U V
imagen00 
.00 
Dispose00 &
(00& '
)00' (
;00( )
if22 
(22 
imagenResponse22 *
!=22+ -
null22. 2
)222 3
{33 
imagenResponse44 *
.44* +
Mensaje44+ 2
=443 4
Mensajes445 =
.44= >
ProcesadaExitosa44> N
;44N O
return55 "
Ok55# %
(55% &
imagenResponse55& 4
)554 5
;555 6
}66 
imagenResponse77 &
.77& '
Mensaje77' .
=77/ 0
Mensajes771 9
.779 :
ProcesadaFallida77: J
;77J K
return88 

BadRequest88 )
(88) *
imagenResponse88* 8
)888 9
;889 :
}99 
else:: 
{;; 
return<< 

BadRequest<< )
(<<) *
new<<* -
ErrorResponseDTO<<. >
(<<> ?
)<<? @
{<<A B
Error<<C H
=<<I J
Mensajes<<K S
.<<S T
FormatoNoValido<<T c
}<<d e
)<<e f
;<<f g
}== 
}>> 
else?? 
{@@ 
returnAA 

BadRequestAA %
(AA% &
newAA& )
ErrorResponseDTOAA* :
(AA: ;
)AA; <
{AA= >
ErrorAA? D
=AAE F
MensajesAAG O
.AAO P
ArchivoNoExisteAAP _
}AA` a
)AAa b
;AAb c
}BB 
}CC 
catchDD 
(DD 
	ExceptionDD 
eDD 
)DD 
{EE 
throwGG 
;GG 
}HH 
}II 	
}JJ 
}KK Ž

3J:\Proyectos\Prueba_Imagen\Prueba_Imagen\Program.cs
	namespace

 	
Prueba_Imagen


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ÿ
3J:\Proyectos\Prueba_Imagen\Prueba_Imagen\Startup.cs
	namespace 	
Prueba_Imagen
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddControllers #
(# $
)$ %
;% &
services 
. 
AddTransient !
<! "
IServicioImagen" 1
,1 2
ServicioImagen2 @
>@ A
(A B
)B C
;C D
services   
.   
AddTransient   !
<  ! "
IServicioSeguridad  " 4
,  4 5
ServicioSeguridad  6 G
>  G H
(  H I
)  I J
;  J K
}!! 	
public$$ 
void$$ 
	Configure$$ 
($$ 
IApplicationBuilder$$ 1
app$$2 5
,$$5 6
IWebHostEnvironment$$7 J
env$$K N
)$$N O
{%% 	
if&& 
(&& 
env&& 
.&& 
IsDevelopment&& !
(&&! "
)&&" #
)&&# $
{'' 
app(( 
.(( %
UseDeveloperExceptionPage(( -
(((- .
)((. /
;((/ 0
})) 
app++ 
.++ 
UseHttpsRedirection++ #
(++# $
)++$ %
;++% &
app-- 
.-- 

UseRouting-- 
(-- 
)-- 
;-- 
app// 
.// 
UseAuthorization//  
(//  !
)//! "
;//" #
app11 
.11 
UseEndpoints11 
(11 
	endpoints11 &
=>11' )
{22 
	endpoints33 
.33 
MapControllers33 (
(33( )
)33) *
;33* +
}44 
)44 
;44 
}55 	
}66 
}77 