-- I
sum_f :: [Int] -> Int
sum_f = foldr (+) 0 

elem_f :: Int -> [Int] -> Bool
elem_f y = foldr ((||).(== y)) False

plusplus :: [Int] -> [Int] -> [Int]
plusplus x y = foldr (:) y x

filter_f :: (a -> Bool) -> [a] -> [a]
filter_f f = foldr (\ x r -> if f x then (x:r) else r) []

map_f :: (a -> b) -> [a] -> [b]
map_f f = foldr ((:) . f) []

mejorSegun :: (a -> a -> Bool) -> [a] -> a
mejorSegun f = foldr1 (\ x r -> if f x r then x else r)

max_ff :: Ord a => [a] -> a
max_ff xs = mejorSegun (>) xs

-- III
sumasParciales :: Num a => [a] -> [a]
sumasParciales = reverse.(foldl (\r x -> if null r then x:r else ((head r) + x) : r) [])

sumaAlt :: Num a => [a] -> a 
sumaAlt = foldr (-) 0
-- sumaAlt =  foldl ((-).(*(-1))) 0

sumaAlt_2 :: Num a => [a] -> a
sumaAlt_2 =  foldl ((+).(*(-1))) 0