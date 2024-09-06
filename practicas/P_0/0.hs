-- PREGUNTAR: EJ 4 a) Y EJ 5 b)

-- ejercicio 1

-- ejercicio 2
-- a) valorAbsoluto 
valorAbsoluto :: Float -> Float
valorAbsoluto x | x > 0 = x
                | otherwise = -x

-- b) bisiesto
bisiesto :: Int -> Bool
bisiesto x = if (mod x 4 == 0 && mod x 100 /= 0) || (mod x 400 == 0) then True else False
-- c) factorial
factorial :: Int -> Int
factorial 1 = 1
factorial x = x * factorial (x-1)


-- d) cantDivisoresPrimos
divide :: Int -> Int -> Bool
divide x y | mod x y == 0 = True
           | otherwise = False

esPrimo :: Int -> Bool
esPrimo k = if k > 1 then null [ x | x <- [2..k - 1], k `mod` x == 0] else False

cantDivisoresPrimos :: Int -> Int
cantDivisoresPrimos x = length (filter (esPrimo) (filter (divide x) [1..x-1]))

-- ejercicio 3


-- a) inverso
inverso :: Float -> Maybe Float
inverso 0 = Nothing
inverso x = Just (1/x)

-- b) aEntero
aEntero :: Either Int Bool -> Int
aEntero (Left x) = x
aEntero (Right y) = if y == True then 1 else 0

-- ejercicio 4

-- a) limpiar
limpiar :: String -> String -> String
limpiar x  = filter (not . flip elem x) -- flip? no entiendo que esta flipeando aca
-- elem 'h' "hello" devuelve true

-- b) difPromedio
sumaLista :: [Float] -> Float
sumaLista [] = 0
sumaLista (x:xs) = x + sumaLista xs

promedio :: Float -> Float -> Float
promedio x y = x/y

tam :: [Float] -> Float
tam [] = 0
tam (x:xs) = 1 + tam xs

difPromedio :: [Float] -> [Float]
difPromedio [] = []
difPromedio x = map (+ (- (promedio (sumaLista x) (tam x)))) x

-- c) todoIguales
todosIguales :: [Int] -> Bool
todosIguales [x] = True
todosIguales (x:xs) = x == head(xs) && todosIguales xs 

-- ejercicio 5

data AB a = Nil | Bin (AB a) a (AB a)

-- a) vacio

vacioAB :: AB a -> Bool
vacioAB Nil = True
vacioAB _   = False

-- b) negacionAB 

-- ///// !!!!!!!PREGUNTAR!!!!!!!
negacionAB :: AB Bool -> AB Bool
negacionAB Nil = Nil
negacionAB (Bin abi centro abd) = Bin (negacionAB abi) (not centro) (negacionAB abd)

-- c) productoAB
productoAB :: AB Int -> Int
productoAB Nil = 0
productoAB (Bin abi centro abd) = (productoAB abi) * centro *(productoAB abd)