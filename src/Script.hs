module Script where

import ArtistasYCanciones
import EjemplosDeArtistas
import EjemplosDeCanciones

exitosDelRockNacional = [tePara3, puente, muchachaOjosDePapel, cantataDePuentesAmarillos, sucioYDesprolijo]

cancionesDeCerati canciones = filter esDeCerati canciones

esDeCerati cancion = autor cancion == cerati

tamanioLetra cancion = (length.letra) cancion

{-- Instanciacion de typeclasses
> tePara3 == tePara3Acustico
True

> cerati == ceratiEnSoda
True

> cancionesDeCerati exitosDelRockNacional
[tePara3, puente]

> cantataDePuentesAmarillos < puente
False

> elem tePara3 exitosDelRockNacional
True

> elem tePara3Acustico exitosDelRockNacional
False

> maximum exitosDelRockNacional
cantataDePuentesAmarillos

> minimum exitosDelRockNacional
tePara3
--}

{-- Lambdas
> any (\ cancion -> duracion cancion < 3) canciones
> map (\ (UnaCancion titulo _ _ duracion) -> (titulo, duracion)) canciones
> filter (\ cancion-> (duracion cancion + 3) * 8 / 15 > 23) canciones
> all (\ cancion -> duracion cancion * tamanioLetra cancion < 500) canciones
--}
