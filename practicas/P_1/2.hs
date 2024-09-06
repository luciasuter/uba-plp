-- I
curry2 :: ((Int, Int) -> Int) -> (Int -> (Int -> Int))
curry2 f x y = f (x, y) 

sumaNC (a, b) = a + b

-- II
uncurry2 :: (Int -> Int -> Int) -> (Int, Int) -> Int
-- uncurry2 :: (Int -> Int -> Int) -> ((Int, Int) -> Int)
uncurry2 f (a, b) = f a b

-- III
-- curryN