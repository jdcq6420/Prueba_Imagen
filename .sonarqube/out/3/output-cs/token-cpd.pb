Å8
HJ:\Proyectos\Prueba_Imagen\Prueba_Imagen\Controllers\ImagenController.cs
	namespace		 	
Prueba_Imagen		
 
.		 
Controllers		 #
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ImagenController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
IServicioImagen (
_servicioImagen) 8
;8 9
private 
readonly 
IServicioSeguridad +
_servicioSeguridad, >
;> ?
public 
ImagenController 
(  
IServicioImagen  /
servicioImagen0 >
,> ?
IServicioSeguridad@ R
servicioSeguridadS d
)d e
{ 	
_servicioImagen 
= 
servicioImagen ,
;, -
_servicioSeguridad 
=  
servicioSeguridad! 2
;2 3
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
IActionResult 

ImagenRuta '
(' (
[( )
FromBody) 1
]1 2
ImagenRutaDto3 @

rutaImagenA K
)K L
{ 	
ImagenResponseDto   
imagenResponse   ,
=  - .
new  / 2
ImagenResponseDto  3 D
(  D E
)  E F
{!! 
ImagenOriginal"" 
=""  
new""! $ 
PropiedadesImagenDto""% 9
(""9 :
)"": ;
,""; <
Mensaje## 
=## 
string##  
.##  !
Empty##! &
,##& '
Error$$ 
=$$ 
new$$ 
ErrorResponseDto$$ ,
($$, -
)$$- .
{$$/ 0
Error$$1 6
=$$7 8
string$$9 ?
.$$? @
Empty$$@ E
}$$E F
}%% 
;%% 
if&& 
(&& 
_servicioSeguridad&& "
.&&" #
existeArchivo&&# 0
(&&0 1

rutaImagen&&1 ;
.&&; <
Ruta&&< @
)&&@ A
)&&A B
{'' 
if(( 
((( 
_servicioSeguridad(( &
.((& '
esImagen((' /
(((/ 0

rutaImagen((0 :
.((: ;
Ruta((; ?
,((? @
(((A B
int((B E
)((E F
Origen((F L
.((L M
ruta((M Q
)((Q R
)((R S
{)) 
Image** 
imagen**  
=**! "
Image**# (
.**( )
FromFile**) 1
(**1 2

rutaImagen**2 <
.**< =
Ruta**= A
)**A B
;**B C
imagenResponse++ "
=++# $
_servicioImagen++% 4
.++4 5
ProcesarImagen++5 C
(++C D
imagen++D J
)++J K
;++K L
imagen,, 
.,, 
Dispose,, "
(,," #
),,# $
;,,$ %
if.. 
(.. 
imagenResponse.. &
!=..' )
null..* .
)... /
{// 
imagenResponse00 &
.00& '
Mensaje00' .
=00/ 0
Mensajes001 9
.009 :
ProcesadaExitosa00: J
;00J K
return11 
Ok11 !
(11! "
imagenResponse11" 0
)110 1
;111 2
}22 
imagenResponse33 "
.33" #
Mensaje33# *
=33+ ,
Mensajes33- 5
.335 6
ProcesadaFallida336 F
;33F G
return44 

BadRequest44 %
(44% &
imagenResponse44& 4
)444 5
;445 6
}55 
else66 
{77 
imagenResponse88 "
.88" #
Error88# (
.88( )
Error88) .
=88/ 0
Mensajes881 9
.889 :
FormatoNoValido88: I
;88I J
return99 

BadRequest99 %
(99% &
imagenResponse99& 4
)994 5
;995 6
}:: 
};; 
else<< 
{== 
imagenResponse>> 
.>> 
Error>> $
.>>$ %
Error>>% *
=>>+ ,
Mensajes>>- 5
.>>5 6
ArchivoNoExiste>>6 E
;>>E F
return?? 

BadRequest?? !
(??! "
imagenResponse??" 0
)??0 1
;??1 2
}@@ 
}AA 	
[GG 	
HttpPostGG	 
]GG 
publicHH 
IActionResultHH 
PostHH !
(HH! "
[HH" #
FromBodyHH# +
]HH+ ,
ImagenRequestDtoHH- =
imagenHH> D
)HHD E
{II 	
ImagenResponseDtoJJ 
imagenResponseJJ ,
=JJ- .
newJJ/ 2
ImagenResponseDtoJJ3 D
(JJD E
)JJE F
{KK 
ImagenOriginalLL 
=LL  
newLL! $ 
PropiedadesImagenDtoLL% 9
(LL9 :
)LL: ;
,LL; <
MensajeMM 
=MM 
stringMM  
.MM  !
EmptyMM! &
}NN 
;NN 
tryOO 
{PP 
ifQQ 
(QQ 
_servicioSeguridadQQ &
.QQ& '
esImagenQQ' /
(QQ/ 0
imagenQQ0 6
.QQ6 7
imagenBase64QQ7 C
,QQC D
(QQE F
intQQF I
)QQI J
OrigenQQJ P
.QQP Q
base64QQQ W
)QQW X
)QQX Y
{RR 
imagenResponseSS "
=SS# $
_servicioImagenSS% 4
.SS4 5
ProcesarImagenSS5 C
(SSC D
_servicioImagenSSD S
.SSS T
DecodificaImagenSST d
(SSd e
imagenSSe k
.SSk l
imagenBase64SSl x
)SSx y
)SSy z
;SSz {
ifTT 
(TT 
imagenResponseTT &
!=TT' )
nullTT* .
)TT. /
{UU 
imagenResponseVV &
.VV& '
MensajeVV' .
=VV/ 0
MensajesVV1 9
.VV9 :
ProcesadaExitosaVV: J
;VVJ K
returnWW 
OkWW !
(WW! "
imagenResponseWW" 0
)WW0 1
;WW1 2
}XX 
imagenResponseYY "
.YY" #
MensajeYY# *
=YY+ ,
MensajesYY- 5
.YY5 6
ProcesadaFallidaYY6 F
;YYF G
returnZZ 

BadRequestZZ %
(ZZ% &
imagenResponseZZ& 4
)ZZ4 5
;ZZ5 6
}[[ 
else\\ 
{]] 
imagenResponse^^ "
.^^" #
Error^^# (
.^^( )
Error^^) .
=^^/ 0
Mensajes^^1 9
.^^9 :
FormatoNoValido^^: I
;^^I J
return__ 

BadRequest__ %
(__% &
imagenResponse__& 4
)__4 5
;__5 6
}`` 
}aa 
catchbb 
(bb 
	Exceptionbb 
)bb 
{cc 
throwee 
;ee 
}ff 
}gg 	
}hh 
}ii ¢

3J:\Proyectos\Prueba_Imagen\Prueba_Imagen\Program.cs
	namespace 	
Prueba_Imagen
 
{ 
public 

static 
class 
Program 
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