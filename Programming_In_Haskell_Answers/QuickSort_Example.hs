qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
              where
                smaller = [a | a <- xs, a <= x]
                larger = [b | b <- xs, b > x]

main :: IO()
main = putStrLn(show(qsort[3,5,1,4,2]))