module ArtistasYCanciones where

data Artista = UnArtista {
	nombre :: String,
	banda :: String
}

instance Eq Artista where
	(==) unArtista otroArtista = nombre unArtista == nombre otroArtista

instance Show Artista where
	show unArtista = nombre unArtista

data Cancion = UnaCancion {
	titulo :: String,
	autor :: Artista,
	letra :: String,
	duracion :: Int
}

instance Eq Cancion where
	(==) unaCancion otraCancion = mismoAutor unaCancion otraCancion && mismoTitulo unaCancion otraCancion

mismoAutor unaCancion otraCancion = autor unaCancion == autor otraCancion

mismoTitulo unaCancion otraCancion = titulo unaCancion == titulo otraCancion 

instance Ord Cancion where
	(<=) unaCancion otraCancion = duracion unaCancion <= duracion otraCancion

instance Show Cancion where
	show cancion = show (autor cancion) ++ " - " ++ titulo cancion