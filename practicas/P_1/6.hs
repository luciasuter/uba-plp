recr ::  (a -> [a] -> b -> b) -> b -> [a] -> b
recr _ z [] = z
recr f z (x : xs) = f x xs (recr f z xs)

-- a
sacarUna :: Eq a => a -> [a] -> [a]
sacarUna y = recr (\x xs f -> if x == y then xs else x:f) []

-- b 
{-
tengo que usar el esquema recr porque foldr me quita todas las apariciones de y
-}

-- c
insertarOrdenado :: Ord a => a -> [a] -> [a]
insertarOrdenado y = recr (\x xs f -> if y < x then [y, x] ++ xs else x:f) [y]

