¶
>J:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\DimensionesDto.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
DimensionesDto 
{ 
public 
int 
Ancho 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
Alto 
{ 
get 
; 
set "
;" #
}$ %
} 
} ¨
@J:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\ErrorResponseDto.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
ErrorResponseDto !
{ 
public 
string 
Error 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ¯
@J:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\ImagenRequestDto.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
ImagenRequestDto !
{ 
public 
string 
imagenBase64 "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Ô
AJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\ImagenResponseDto.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
ImagenResponseDto "
{ 
public 
bool 
RequiereModificar %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
public  
PropiedadesImagenDto #
ImagenOriginal$ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public  
PropiedadesImagenDto #
ImagenModificada$ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public		 
ErrorResponseDto		 
Error		  %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
}

 
} þ
=J:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\ImagenRutaDto.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
ImagenRutaDto 
{ 
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
,+ ,
ErrorMessage- 9
=: ;
$str< o
)o p
]p q
public 
string 
Ruta 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 Ý
DJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\PropiedadesImagenDto.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class  
PropiedadesImagenDto %
{ 
public 
string 
Orientacion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DimensionesDto 
Dimensiones )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} 