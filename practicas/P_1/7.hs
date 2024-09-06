
genLista :: a -> (a->a) -> Int -> [a]
genLista e f 0 = []
genLista e f x = [e] ++ (genLista (f e) f (x-1)) 


desdeHasta :: Int -> Int -> [Int]
desdeHasta x y = genLista x (+1) (y-x + 1)
