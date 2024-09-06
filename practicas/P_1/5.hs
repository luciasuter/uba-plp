-- posPares no es recursion estructural porque 
-- la recursion es sobre tail de xs

-- entrelazar si es recursion estructural


entrelazar x [] = x
entrelazar [] y = y
entrelazar (x:xs) (y:ys) = x:y:(entrelazar xs ys)

entrelazar2 [] = id
entrelazar2 (x:xs) = \ys -> if null ys 
                            then x:xs 
                            else x:(head ys):(entrelazar2 xs (tail ys))

entrelazar1 :: [a] -> [a] -> [a]
entrelazar1 = foldr (\x r y -> if null y then x:r [] else x:(head y):r (tail y)) id