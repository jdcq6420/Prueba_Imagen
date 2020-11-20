±
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
6 7
} 
} Ã
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
string 
ruta !
)! "
;" #
} 
} ê<
CJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\ServicioImagen.cs
	namespace 	
Prueba_Imagen
 
. 
Servicio  
{ 
public		 

class		 
ServicioImagen		 
:		  !
IServicioImagen		" 1
{

 
public 
string 
Orientacion !
(! "
Size" &
dimensiones' 2
)2 3
{ 	
if 
( 
dimensiones 
. 
Width !
>" #
dimensiones$ /
./ 0
Height0 6
)6 7
{ 
return 
Orientaciones $
.$ %

Horizontal% /
./ 0
ToString0 8
(8 9
)9 :
;: ;
} 
else 
if 
( 
dimensiones  
.  !
Width! &
<' (
dimensiones) 4
.4 5
Height5 ;
); <
{ 
return 
Orientaciones $
.$ %
Vertical% -
.- .
ToString. 6
(6 7
)7 8
;8 9
} 
return 
Orientaciones  
.  !
Vertical! )
.) *
ToString* 2
(2 3
)3 4
;4 5
} 	
public  
PropiedadesImagenDto #
CambiarTama√±o$ 1
(1 2
Size2 6
dimensiones7 B
,B C
stringD J
orientacionK V
)V W
{ 	
double 
radio 
; 
double  
radioX! '
=( )
$num* +
;+ ,
double- 3
radioY4 :
=; <
$num= >
;> ?
switch 
( 
orientacion 
)  
{ 
case 
$str !
:! "
radioX 
= 
( 
double $
)$ %#
DimensionesA4Horizontal% <
.< =
Ancho= B
/C D
dimensionesE P
.P Q
WidthQ V
;V W
radioY   
=   
(   
double   $
)  $ %#
DimensionesA4Horizontal  % <
.  < =
Alto  = A
/  B C
dimensiones  D O
.  O P
Height  P V
;  V W
break!! 
;!! 
case## 
$str## 
:##  
radioX$$ 
=$$ 
($$ 
double$$ $
)$$$ %!
DimensionesA4Vertical$$% :
.$$: ;
Ancho$$; @
/$$A B
dimensiones$$C N
.$$N O
Width$$O T
;$$T U
radioY%% 
=%% 
(%% 
double%% $
)%%$ %!
DimensionesA4Vertical%%% :
.%%: ;
Alto%%; ?
/%%@ A
dimensiones%%B M
.%%M N
Height%%N T
;%%T U
break&& 
;&& 
}'' 
radio)) 
=)) 
radioX)) 
<)) 
radioY)) #
?))$ %
radioX))& ,
:))- .
radioY))/ 5
;))5 6 
PropiedadesImagenDto**  
propiedades**! ,
=**- .
new**/ 2 
PropiedadesImagenDto**3 G
(**G H
)**H I
{++ 
Dimensiones,, 
=,, 
new,, !
DimensionesDto,," 0
(,,0 1
),,1 2
{-- 
Ancho.. 
=.. 
Convert.. #
...# $
ToInt32..$ +
(..+ ,
Math.., 0
...0 1
Floor..1 6
(..6 7
radio..7 <
*..= >
dimensiones..? J
...J K
Width..K P
)..P Q
)..Q R
,..R S
Alto// 
=// 
Convert// "
.//" #
ToInt32//# *
(//* +
Math//+ /
./// 0
Floor//0 5
(//5 6
radio//6 ;
*//< =
dimensiones//> I
.//I J
Height//J P
)//P Q
)//Q R
}00 
,00 
Orientacion11 
=11 
orientacion11 )
}22 
;22 
return33 
propiedades33 
;33 
}55 	
public77 
ImagenResponseDto77  
ProcesarImagen77! /
(77/ 0
Image770 5
imagen776 <
)77< =
{88 	
ImagenResponseDto99 
	respuesta99 '
=99( )
new99* -
ImagenResponseDto99. ?
(99? @
)99@ A
{:: 
RequiereModificar;; !
=;;" #
false;;$ )
,;;) *
ImagenOriginal<< 
=<<  
new<<! $ 
PropiedadesImagenDto<<% 9
(<<9 :
)<<: ;
{== 
Dimensiones>> 
=>>  !
new>>" %
DimensionesDto>>& 4
(>>4 5
)>>5 6
{?? 
Ancho@@ 
=@@ 
imagen@@  &
.@@& '
Width@@' ,
,@@, -
AltoAA 
=AA 
imagenAA %
.AA% &
HeightAA& ,
}BB 
}CC 
}DD 
;DD 
stringEE 
orientacionEE 
=EE  
OrientacionEE! ,
(EE, -
imagenEE- 3
.EE3 4
SizeEE4 8
)EE8 9
;EE9 :
	respuestaFF 
.FF 
ImagenOriginalFF $
.FF$ %
OrientacionFF% 0
=FF1 2
orientacionFF3 >
;FF> ?
switchHH 
(HH 
orientacionHH 
)HH  
{II 
caseJJ 
$strJJ !
:JJ! "
ifKK 
(KK 
imagenKK 
.KK 
WidthKK $
>KK% &
(KK' (
intKK( +
)KK+ ,#
DimensionesA4HorizontalKK, C
.KKC D
AnchoKKD I
||KKJ L
imagenLL 
.LL 
HeightLL %
>LL& '
(LL( )
intLL) ,
)LL, -#
DimensionesA4HorizontalLL- D
.LLD E
AltoLLE I
)LLI J
{MM 
	respuestaNN !
.NN! "
RequiereModificarNN" 3
=NN4 5
trueNN6 :
;NN: ;
	respuestaOO !
.OO! "
ImagenModificadaOO" 2
=OO3 4
CambiarTama√±oOO5 B
(OOB C
imagenOOC I
.OOI J
SizeOOJ N
,OON O
orientacionOOP [
)OO[ \
;OO\ ]
}PP 
breakQQ 
;QQ 
caseSS 
$strSS 
:SS  
ifTT 
(TT 
imagenTT 
.TT 
WidthTT $
>TT% &
(TT' (
intTT( +
)TT+ ,!
DimensionesA4VerticalTT, A
.TTA B
AnchoTTB G
||TTH J
imagenUU 
.UU 
HeightUU %
>UU& '
(UU( )
intUU) ,
)UU, -!
DimensionesA4VerticalUU- B
.UUB C
AltoUUC G
)UUG H
{VV 
	respuestaWW !
.WW! "
RequiereModificarWW" 3
=WW4 5
trueWW6 :
;WW: ;
	respuestaXX !
.XX! "
ImagenModificadaXX" 2
=XX3 4
CambiarTama√±oXX5 B
(XXB C
imagenXXC I
.XXI J
SizeXXJ N
,XXN O
orientacionXXP [
)XX[ \
;XX\ ]
}YY 
breakZZ 
;ZZ 
}[[ 
return\\ 
	respuesta\\ 
;\\ 
}]] 	
}^^ 
}__ ô
FJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.Servicio\ServicioSeguridad.cs
	namespace 	
Prueba_Imagen
 
. 
Servicio  
{ 
public		 

class		 
ServicioSeguridad		 "
:		# $
IServicioSeguridad		% 7
{

 
public 
bool 
existeArchivo !
(! "
string" (
ruta) -
)- .
{ 	
return 
File 
. 
Exists 
( 
ruta #
)# $
;$ %
} 	
public 
bool 
esImagen 
( 
string #
ruta$ (
)( )
{ 	
byte 
[ 
] 
bytes 
= 
File 
.  
ReadAllBytes  ,
(, -
ruta- 1
)1 2
;2 3
try 
{ 
if 
( 
EncabezadosImagen %
.% &
bmp& )
.) *
SequenceEqual* 7
(7 8
bytes8 =
.= >
Take> B
(B C
EncabezadosImagenC T
.T U
bmpU X
.X Y
LengthY _
)_ `
)` a
||b d
EncabezadosImagen %
.% &
png& )
.) *
SequenceEqual* 7
(7 8
bytes8 =
.= >
Take> B
(B C
EncabezadosImagenC T
.T U
pngU X
.X Y
LengthY _
)_ `
)` a
||b d
EncabezadosImagen %
.% &
tiff& *
.* +
SequenceEqual+ 8
(8 9
bytes9 >
.> ?
Take? C
(C D
EncabezadosImagenD U
.U V
tiffV Z
.Z [
Length[ a
)a b
)b c
||d f
EncabezadosImagen %
.% &
tiff2& +
.+ ,
SequenceEqual, 9
(9 :
bytes: ?
.? @
Take@ D
(D E
EncabezadosImagenE V
.V W
tiff2W \
.\ ]
Length] c
)c d
)d e
||f h
EncabezadosImagen %
.% &
jpeg& *
.* +
SequenceEqual+ 8
(8 9
bytes9 >
.> ?
Take? C
(C D
EncabezadosImagenD U
.U V
jpegV Z
.Z [
Length[ a
)a b
)b c
||d f
EncabezadosImagen %
.% &
jpeg2& +
.+ ,
SequenceEqual, 9
(9 :
bytes: ?
.? @
Take@ D
(D E
EncabezadosImagenE V
.V W
jpeg2W \
.\ ]
Length] c
)c d
)d e
)e f
{ 
return 
true 
;  
} 
return 
false 
; 
} 
catch   
(   
	Exception   
)   
{!! 
throw"" 
;"" 
}## 
finally$$ 
{%% 
Array&& 
.&& 
Clear&& 
(&& 
bytes&& !
,&&! "
$num&&" #
,&&# $
bytes&&$ )
.&&) *
Length&&* 0
)&&0 1
;&&1 2
}'' 
}(( 	
})) 
}** 