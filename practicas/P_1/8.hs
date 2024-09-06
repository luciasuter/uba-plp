-- I

mapPares :: (a -> b1 -> b2) -> [(a, b1)] -> [b2]
mapPares f = foldr (\x rec -> (f (fst x) (snd x)):rec) []
-- v2
mapPares2 :: (a -> b1 -> b2) -> [(a, b1)] -> [b2]
mapPares2 f = map (uncurry f)

-- II

--armarPares [] _ = []
--armarPares _ [] = []
--armarPares (x:xs) (y:ys) = (x,y): armarPares xs ys


armarPares :: [a] -> [b] -> [(a,b)]
armarPares = foldr (\x r ys -> if null ys then [] else (x, (head ys)): r (tail ys)) (const [])

--III

mapDoble :: (a->b->c) -> [a] -> [b] -> [c]
mapDoble f = foldr(\x r ys -> (f x (head ys)): r (tail ys)) (const [])