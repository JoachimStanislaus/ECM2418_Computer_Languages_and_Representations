-- Activity 0 The first Haskell program that one writes is always the same. It simply prints the string “Hello World”.

-- main :: IO()
-- main = putStrLn "Hello World!"

-- Activity 1 Write a function “len”, which returns the length of a list of integers.

-- len :: [Int] -> Int
-- len[] = 0
-- len (x:xs) = 1 + len xs

-- main :: IO()
-- main = putStrLn(show(len [1,2,3,4]))

-- Activity 2 Write a function “contains”, which returns “True” if a string is in a given list of strings, and “False” otherwise
-- Solution 1

-- contains :: [String] -> String -> Bool
-- contains [] e = False
-- contains (x:xs) e = if e == x then True else contains xs e

-- main :: IO()
-- main = putStrLn(show(contains[ "TO","BE","OR","NOT","TO","BE", "THAT"] "THAT"))

-- Solution 2

-- contains :: [String] -> String -> Bool
-- contains [] e = False
-- contains (x:xs) e | e == x = True | otherwise = contains xs e

-- main :: IO()
-- main = putStrLn(show(contains[ "TO","BE","OR","NOT","TO","BE"] "THAT"))

-- Activity 3 Write a function “set”, which returns “True” if no string occurs in a given list of strings more than once

-- contains :: [String] -> String -> Bool
-- contains [] e = False
-- contains (x:xs) e 
--   | e == x = True 
--   | otherwise = contains xs e

-- set :: [String] -> Bool
-- set [] = True
-- set (x:xs) 
--   | contains xs x = False 
--   | otherwise = set xs

-- main :: IO()
-- main = putStrLn (show(set["TO","BE","OR","NOT"]))

-- Activity 4 Write a function “largest”, which returns the largest integer in a list of integers.

-- largest :: [Int] -> Int
-- largest [x] = x
-- largest (x:xs)
--   | x > largest xs = x
--   | otherwise = largest xs

-- main :: IO()
-- main = putStrLn (show(largest[3,0,10,2,5,7,8]))

-- Activity 5 Write a function “zipped” that zips a pair of lists of equal length together to give a list of pairs.
--   zipped ([ "France", "England", "Japan" ], [ 33, 44, 81 ])
--     ====> [ ("France", 33), ("England", 44), ("Japan", 81) ]

-- zipped :: ([String],[Int]) -> [(String,Int)] 
-- zipped ([],[]) = []
-- zipped (_,[]) = []
-- zipped ([],_) = []
-- zipped ((x:xs),(y:ys)) = (x,y): zipped (xs,ys)

-- main :: IO()
-- main = putStrLn(show(zipped(["France","England","Japan"],[33,44,81])))

-- Activity 6 Write a function “insert” which inserts an integer into an ordered list of integers.

-- insert :: Int -> [Int] -> [Int]
-- insert x [] = [x]
-- insert x (y:ys) = if x <= y
--                   then x:y:ys
--                   else y : insert x ys

-- main :: IO()
-- main = putStrLn(show(insert 4 [2,3,5,7,11]))

-- Activity 7 Write a function “sort” which sorts a list of integers into order.

-- qsort [] = []
-- qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
--               where
--               smaller = [a | a <- xs, a <= x]
--               larger = [b | b <- xs, b > x]


-- main :: IO()
-- main = putStrLn(show(qsort[2,10,2,3,4,5,9,3]))

-- Activity 7: Alternative Solution

-- insert :: Int -> [Int] -> [Int] -- Take an integer into a list of integers and return a list of integers
-- insert e [] = [e]
-- insert e (x:xs)
-- 	| e<=x = e : x : xs
-- 	| otherwise = x : insert e xs

-- sort :: [Int] -> [Int]
-- sort [] = []
-- sort (x:xs) = insert x (sort xs)

-- main :: IO()
-- main = putStrLn(show(sort[2,10,2,3,4,5,9,3]))

-- Activity 8 Use a search engine to locate the Haskell Standard Prelude of predefined functions and operators. How many of the functions that you have defined in this laboratory could be re-expressed in terms of Standard Prelude ones?
-- Most of it has inbuilt functions 
