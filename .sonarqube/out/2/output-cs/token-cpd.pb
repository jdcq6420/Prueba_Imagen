—
NJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\Interface\IServicioImagen.cs
	namespace 	
Prueba_Imagen
 
. 
Servicio  
.  !
	Interface! *
{ 
public 

	interface 
IServicioImagen $
{ 
string 
Orientacion 
( 
Size 
dimensiones  +
)+ ,
;, - 
PropiedadesImagenDto		 
CambiarTama√±o		 *
(		* +
Size		+ /
dimensiones		0 ;
,		; <
string		= C
orientacion		D O
)		O P
;		P Q
ImagenResponseDto

 
ProcesarImagen

 (
(

( )
Image

) .
imagen

/ 5
)

5 6
;

6 7
public 
Image 
DecodificaImagen %
(% &
string& ,
imagenBase64- 9
)9 :
;: ;
} 
} Ç
QJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\Interface\IServicioSeguridad.cs
	namespace 	
Prueba_Imagen
 
. 
Servicio  
.  !
	Interface! *
{ 
public 

	interface 
IServicioSeguridad '
{ 
bool 
existeArchivo 
( 
string !
ruta" &
)& '
;' (
bool 
esImagen 
( 
string 
imagen #
,# $
int% (
origen) /
)/ 0
;0 1
} 
} ·C
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
PropiedadesImagenDto #
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
PropiedadesImagenDto++  
propiedades++! ,
=++- .
new++/ 2 
PropiedadesImagenDto++3 G
(++G H
)++H I
{,, 
Dimensiones-- 
=-- 
new-- !
DimensionesDto--" 0
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
public88 
ImagenResponseDto88  
ProcesarImagen88! /
(88/ 0
Image880 5
imagen886 <
)88< =
{99 	
ImagenResponseDto:: 
	respuesta:: '
=::( )
new::* -
ImagenResponseDto::. ?
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
PropiedadesImagenDto==% 9
(==9 :
)==: ;
{>> 
Dimensiones?? 
=??  !
new??" %
DimensionesDto??& 4
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
}^^ 	
public`` 
Image`` 
DecodificaImagen`` %
(``% &
string``& ,
imagenBase64``- 9
)``9 :
{aa 	
bytebb 
[bb 
]bb 
imagenbb 
=bb 
Convertbb #
.bb# $
FromBase64Stringbb$ 4
(bb4 5
imagenBase64bb5 A
)bbA B
;bbB C
usingcc 
(cc 
varcc 
mscc 
=cc 
newcc 
MemoryStreamcc  ,
(cc, -
imagencc- 3
,cc3 4
$numcc5 6
,cc6 7
imagencc8 >
.cc> ?
Lengthcc? E
)ccE F
)ccF G
{dd 
Imageee 
imageee 
=ee 
Imageee #
.ee# $

FromStreamee$ .
(ee. /
msee/ 1
,ee1 2
trueee3 7
)ee7 8
;ee8 9
returnff 
imageff 
;ff 
}gg 
}hh 	
}ii 
}jj ﬁ
FJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\ServicioSeguridad.cs
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
 
ServicioSeguridad

 "
:

# $
IServicioSeguridad

% 7
{ 
public 
bool 
existeArchivo !
(! "
string" (
ruta) -
)- .
{ 	
return 
File 
. 
Exists 
( 
ruta #
)# $
;$ %
} 	
public 
bool 
esImagen 
( 
string #
imagen$ *
,* +
int, /
origen0 6
)6 7
{ 	
byte 
[ 
] 
bytes 
= 
new 
byte #
[# $
]$ %
{& '
}( )
;) *
switch 
( 
origen 
) 
{ 
case 
( 
int 
) 
Origen  
.  !
ruta! %
:% &
bytes 
= 
File  
.  !
ReadAllBytes! -
(- .
imagen. 4
)4 5
;5 6
break 
; 
case 
( 
int 
) 
Origen  
.  !
base64! '
:' (
bytes 
= 
DeseralizarImagen -
(- .
imagen. 4
)4 5
;5 6
break 
; 
} 
try 
{ 
if   
(   
EncabezadosImagen   %
.  % &
jpeg  & *
.  * +
SequenceEqual  + 8
(  8 9
bytes  9 >
.  > ?
Take  ? C
(  C D
EncabezadosImagen  D U
.  U V
jpeg  V Z
.  Z [
Length  [ a
)  a b
)  b c
||  d f
EncabezadosImagen!! %
.!!% &
jpeg2!!& +
.!!+ ,
SequenceEqual!!, 9
(!!9 :
bytes!!: ?
.!!? @
Take!!@ D
(!!D E
EncabezadosImagen!!E V
.!!V W
jpeg2!!W \
.!!\ ]
Length!!] c
)!!c d
)!!d e
)!!e f
{"" 
return## 
true## 
;##  
}$$ 
return%% 
false%% 
;%% 
}&& 
catch'' 
('' 
	Exception'' 
e'' 
)'' 
{(( 
throw)) 
e)) 
;)) 
}** 
finally++ 
{,, 
Array-- 
.-- 
Clear-- 
(-- 
bytes-- !
,--! "
$num--# $
,--$ %
bytes--& +
.--+ ,
Length--, 2
)--2 3
;--3 4
}.. 
}// 	
private11 
byte11 
[11 
]11 
DeseralizarImagen11 (
(11( )
string11) /
imagen110 6
)116 7
{22 	
byte33 
[33 
]33 
	respuesta33 
=33 
Convert33 &
.33& '
FromBase64String33' 7
(337 8
imagen338 >
)33> ?
;33? @
return44 
	respuesta44 
;44 
}55 	
}66 
}77 