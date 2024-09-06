max2 :: Ord a => (a, a) -> a
max2 (x, y) | x >= y = x
            | otherwise = y

normaVectorial :: (Float, Float) -> Float
normaVectorial (x, y) = sqrt (x^2 + y^2)

subtract2 :: Float -> (Float -> Float)
--subtract2 :: Float -> Float -> Float
subtract2 = flip (-)

predecesor :: Float -> Float
predecesor = subtract2 1

evaluarEnCero :: (Float -> Float) -> Float 
evaluarEnCero = \f -> f 0

dosVeces :: (Float -> Float) -> Float -> Float
dosVeces = \f -> f . f 

--flipAll 

--flipRaro