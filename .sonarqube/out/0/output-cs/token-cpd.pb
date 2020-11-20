¶
>J:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\DimensionesDTO.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
DimensionesDTO 
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
@J:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\ErrorResponseDTO.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
ErrorResponseDTO !
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
} ¤
@J:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\ImagenRequestDTO.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
ImagenRequestDTO !
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
}' (
public

 
string

 
imagenStream

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
} 
} ±
AJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\ImagenResponseDTO.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class 
ImagenResponseDTO "
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
PropiedadesImagenDTO #
ImagenOriginal$ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public  
PropiedadesImagenDTO #
ImagenModificada$ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
}		 
}

 Ý
DJ:\Proyectos\Prueba_Imagen\Prueba_Imagen.DTO\PropiedadesImagenDTO.cs
	namespace 	
Prueba_Imagen
 
. 
DTO 
{ 
public 

class  
PropiedadesImagenDTO %
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
DimensionesDTO 
Dimensiones )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} 