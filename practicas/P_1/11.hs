data Polinomio a = X
                 | Cte a
                 | Suma (Polinomio a) (Polinomio a)
                 | Prod (Polinomio a) (Polinomio a)


--                      esto es xq suma y prod toman la recursion q ya es de tipo b
foldPoli :: b -> (a->b)->(b->b->b)->(b->b->b)-> Polinomio a -> b
foldPoli fx fcte fsuma fprod poli = case poli of
                                    X         -> fx
                                    Cte e     -> fcte e
                                    Suma x y  -> fsuma (recu x) (recu y)
                                    Prod x y  -> fprod (recu x) (recu y)
    where recu = foldPoli fx fcte fsuma fprod
                                    
evaluar :: Num a => a -> Polinomio a -> a
evaluar x = foldPoli x id (+) (*) 