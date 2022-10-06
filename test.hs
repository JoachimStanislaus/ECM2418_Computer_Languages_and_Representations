-- 1.7.1 Give another possible calculation for the result of double (double 2) 

-- double :: Int -> Int
-- double x = x*2

-- main :: IO()
-- main = putStrLn(show(double(double 2)))

-- 1.7.2 Show that sum [x] = x for any number x

-- summ :: [Int] -> Int
-- summ [] = 0
-- summ (x:xs) = x + summ xs

-- main :: IO()
-- main = putStrLn(show(summ[3,4]))

-- 1.7.3 Define a function product that produces the product of a list of numbers, and show using your definition that product [2,3,4] = 24

-- productt :: [Int] -> Int
-- productt [] = 1
-- productt (x:xs) = x * productt xs

-- main :: IO()
-- main = putStrLn(show(productt[2,3,4]))

-- 1.7.4 How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?

-- qsort :: [Int] -> [Int]
-- qsort [] = []
-- qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
--               where
--               smaller = [a | a <- xs, a > x]
--               larger = [b | b <- xs, b <= x]

-- main :: IO()
-- main = putStrLn(show(qsort[1,2,3,4,5]))

-- 1.7.5 What would be the effect of replacing <= by < in the definition of qsort?
-- Duplicate Values would be lost because it would not be able to sort numbers of the same value.
