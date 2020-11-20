·
NJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\Interface\IServicioImagen.cs
	namespace 	
Prueba_Imagen
 
. 
Servicio  
.  !
	Interface! *
{		 
public

 

	interface

 
IServicioImagen

 $
{ 
string 
Orientacion 
( 
Size 
dimensiones  +
)+ ,
;, - 
PropiedadesImagenDTO 
CambiarTama√±o *
(* +
Size+ /
dimensiones0 ;
,; <
string= C
orientacionD O
)O P
;P Q
Task 
< 
ImagenResponseDTO 
> 
ProcesarImagen  .
(. /
Image/ 4
imagen5 ;
); <
;< =
} 
} Ã
QJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\Interface\IServicioSeguridad.cs
	namespace 	
Prueba_Imagen
 
. 
Servicio  
.  !
	Interface! *
{ 
public 

	interface 
IServicioSeguridad '
{ 
bool		 
existeArchivo		 
(		 
string		 !
ruta		" &
)		& '
;		' (
bool

 
esImagen

 
(

 
string

 
ruta

 !
)

! "
;

" #
} 
} ”<
CJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\ServicioImagen.cs
	namespace 	
Prueba_Imagen
 
. 
Servicio  
{		 
public

 

class

 
ServicioImagen

 
:

  !
IServicioImagen

" 1
{ 
public 
string 
Orientacion !
(! "
Size" &
dimensiones' 2
)2 3
{ 	
if 
( 
dimensiones 
. 
Width !
>" #
dimensiones$ /
./ 0
Height0 6
)6 7
{ 
return 
Orientaciones $
.$ %

Horizontal% /
./ 0
ToString0 8
(8 9
)9 :
;: ;
} 
else 
if 
( 
dimensiones  
.  !
Width! &
<' (
dimensiones) 4
.4 5
Height5 ;
); <
{ 
return 
Orientaciones $
.$ %
Vertical% -
.- .
ToString. 6
(6 7
)7 8
;8 9
} 
return 
Orientaciones  
.  !
Vertical! )
.) *
ToString* 2
(2 3
)3 4
;4 5
} 	
public  
PropiedadesImagenDTO #
CambiarTama√±o$ 1
(1 2
Size2 6
dimensiones7 B
,B C
stringD J
orientacionK V
)V W
{ 	
double 
radio 
; 
double  
radioX! '
=( )
$num* +
;+ ,
double- 3
radioY4 :
=; <
$num= >
;> ?
switch 
( 
orientacion 
)  
{ 
case 
$str !
:! "
radioX   
=   
(   
double   $
)  $ %#
DimensionesA4Horizontal  % <
.  < =
Ancho  = B
/  C D
dimensiones  E P
.  P Q
Width  Q V
;  V W
radioY!! 
=!! 
(!! 
double!! $
)!!$ %#
DimensionesA4Horizontal!!% <
.!!< =
Alto!!= A
/!!B C
dimensiones!!D O
.!!O P
Height!!P V
;!!V W
break"" 
;"" 
case$$ 
$str$$ 
:$$  
radioX%% 
=%% 
(%% 
double%% $
)%%$ %!
DimensionesA4Vertical%%% :
.%%: ;
Ancho%%; @
/%%A B
dimensiones%%C N
.%%N O
Width%%O T
;%%T U
radioY&& 
=&& 
(&& 
double&& $
)&&$ %!
DimensionesA4Vertical&&% :
.&&: ;
Alto&&; ?
/&&@ A
dimensiones&&B M
.&&M N
Height&&N T
;&&T U
break'' 
;'' 
}(( 
radio** 
=** 
radioX** 
<** 
radioY** #
?**$ %
radioX**& ,
:**- .
radioY**/ 5
;**5 6 
PropiedadesImagenDTO++  
propiedades++! ,
=++- .
new++/ 2 
PropiedadesImagenDTO++3 G
(++G H
)++H I
{,, 
Dimensiones-- 
=-- 
new-- !
DimensionesDTO--" 0
(--0 1
)--1 2
{.. 
Ancho// 
=// 
Convert// #
.//# $
ToInt32//$ +
(//+ ,
Math//, 0
.//0 1
Floor//1 6
(//6 7
radio//7 <
*//= >
dimensiones//? J
.//J K
Width//K P
)//P Q
)//Q R
,//R S
Alto00 
=00 
Convert00 "
.00" #
ToInt3200# *
(00* +
Math00+ /
.00/ 0
Floor000 5
(005 6
radio006 ;
*00< =
dimensiones00> I
.00I J
Height00J P
)00P Q
)00Q R
}11 
,11 
Orientacion22 
=22 
orientacion22 )
}33 
;33 
return44 
propiedades44 
;44 
}66 	
public88 
async88 
Task88 
<88 
ImagenResponseDTO88 +
>88+ ,
ProcesarImagen88- ;
(88; <
Image88< A
imagen88B H
)88H I
{99 	
ImagenResponseDTO:: 
	respuesta:: '
=::( )
new::* -
ImagenResponseDTO::. ?
(::? @
)::@ A
{;; 
RequiereModificar<< !
=<<" #
false<<$ )
,<<) *
ImagenOriginal== 
===  
new==! $ 
PropiedadesImagenDTO==% 9
(==9 :
)==: ;
{>> 
Dimensiones?? 
=??  !
new??" %
DimensionesDTO??& 4
(??4 5
)??5 6
{@@ 
AnchoAA 
=AA 
imagenAA  &
.AA& '
WidthAA' ,
,AA, -
AltoBB 
=BB 
imagenBB %
.BB% &
HeightBB& ,
}CC 
}DD 
}EE 
;EE 
stringFF 
orientacionFF 
=FF  
OrientacionFF! ,
(FF, -
imagenFF- 3
.FF3 4
SizeFF4 8
)FF8 9
;FF9 :
	respuestaGG 
.GG 
ImagenOriginalGG $
.GG$ %
OrientacionGG% 0
=GG1 2
orientacionGG3 >
;GG> ?
switchII 
(II 
orientacionII 
)II  
{JJ 
caseKK 
$strKK !
:KK! "
ifLL 
(LL 
imagenLL 
.LL 
WidthLL $
>LL% &
(LL' (
intLL( +
)LL+ ,#
DimensionesA4HorizontalLL, C
.LLC D
AnchoLLD I
||LLJ L
imagenMM 
.MM 
HeightMM %
>MM& '
(MM( )
intMM) ,
)MM, -#
DimensionesA4HorizontalMM- D
.MMD E
AltoMME I
)MMI J
{NN 
	respuestaOO !
.OO! "
RequiereModificarOO" 3
=OO4 5
trueOO6 :
;OO: ;
	respuestaPP !
.PP! "
ImagenModificadaPP" 2
=PP3 4
CambiarTama√±oPP5 B
(PPB C
imagenPPC I
.PPI J
SizePPJ N
,PPN O
orientacionPPP [
)PP[ \
;PP\ ]
}QQ 
breakRR 
;RR 
caseTT 
$strTT 
:TT  
ifUU 
(UU 
imagenUU 
.UU 
WidthUU $
>UU% &
(UU' (
intUU( +
)UU+ ,!
DimensionesA4VerticalUU, A
.UUA B
AnchoUUB G
||UUH J
imagenVV 
.VV 
HeightVV %
>VV& '
(VV( )
intVV) ,
)VV, -!
DimensionesA4VerticalVV- B
.VVB C
AltoVVC G
)VVG H
{WW 
	respuestaXX !
.XX! "
RequiereModificarXX" 3
=XX4 5
trueXX6 :
;XX: ;
	respuestaYY !
.YY! "
ImagenModificadaYY" 2
=YY3 4
CambiarTama√±oYY5 B
(YYB C
imagenYYC I
.YYI J
SizeYYJ N
,YYN O
orientacionYYP [
)YY[ \
;YY\ ]
}ZZ 
break[[ 
;[[ 
}\\ 
return]] 
	respuesta]] 
;]] 
}^^ 	
}__ 
}`` ®
FJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\ServicioSeguridad.cs
	namespace		 	
Prueba_Imagen		
 
.		 
Servicio		  
{

 
public 

class 
ServicioSeguridad "
:# $
IServicioSeguridad% 7
{ 
public 
bool 
existeArchivo !
(! "
string" (
ruta) -
)- .
{ 	
return 
File 
. 
Exists 
( 
ruta #
)# $
;$ %
} 	
public 
bool 
esImagen 
( 
string #
ruta$ (
)( )
{ 	
byte 
[ 
] 
bytes 
= 
File 
.  
ReadAllBytes  ,
(, -
ruta- 1
)1 2
;2 3
try 
{ 
if 
( 
EncabezadosImagen %
.% &
bmp& )
.) *
SequenceEqual* 7
(7 8
bytes8 =
.= >
Take> B
(B C
EncabezadosImagenC T
.T U
bmpU X
.X Y
LengthY _
)_ `
)` a
||b d
EncabezadosImagen %
.% &
png& )
.) *
SequenceEqual* 7
(7 8
bytes8 =
.= >
Take> B
(B C
EncabezadosImagenC T
.T U
pngU X
.X Y
LengthY _
)_ `
)` a
||b d
EncabezadosImagen %
.% &
tiff& *
.* +
SequenceEqual+ 8
(8 9
bytes9 >
.> ?
Take? C
(C D
EncabezadosImagenD U
.U V
tiffV Z
.Z [
Length[ a
)a b
)b c
||d f
EncabezadosImagen %
.% &
tiff2& +
.+ ,
SequenceEqual, 9
(9 :
bytes: ?
.? @
Take@ D
(D E
EncabezadosImagenE V
.V W
tiff2W \
.\ ]
Length] c
)c d
)d e
||f h
EncabezadosImagen %
.% &
jpeg& *
.* +
SequenceEqual+ 8
(8 9
bytes9 >
.> ?
Take? C
(C D
EncabezadosImagenD U
.U V
jpegV Z
.Z [
Length[ a
)a b
)b c
||d f
EncabezadosImagen %
.% &
jpeg2& +
.+ ,
SequenceEqual, 9
(9 :
bytes: ?
.? @
Take@ D
(D E
EncabezadosImagenE V
.V W
jpeg2W \
.\ ]
Length] c
)c d
)d e
)e f
{ 
return 
true 
;  
} 
return   
false   
;   
}!! 
catch"" 
("" 
	Exception"" 
e"" 
)"" 
{## 
throw$$ 
;$$ 
}%% 
finally&& 
{'' 
Array(( 
.(( 
Clear(( 
((( 
bytes(( !
,((! "
$num((" #
,((# $
bytes(($ )
.(() *
Length((* 0
)((0 1
;((1 2
})) 
}** 	
}++ 
},, 