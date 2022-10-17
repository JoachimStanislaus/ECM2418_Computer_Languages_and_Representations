-- Activity 1: Write a function “appList” which takes two lists of integers and returns a single list of them appended together

-- applist :: [Int] -> [Int] -> [Int]
-- applist [] ys = ys

-- applist(x:xs) ys = x : applist xs ys

-- main::IO()
-- main = putStrLn(show(applist [1,2,3][4,5,6,7]))


-- Activity 2: Rewrite the function “appList” using the higher-order function “foldr”.

-- applist2 :: [Int] -> [Int] -> [Int]
-- applist2 xs ys = foldr (:) ys xs

-- main::IO()
-- main = putStrLn(show(applist2 [1,2,3][4,5,6,7]))


-- Activity 3: Write a function “concatList” which takes a list and produces a new one with one level of list structure removed.

-- applist2 :: [Int] -> [Int] -> [Int]
-- applist2 xs ys = foldr (:) ys xs

-- concatlist :: [[Int]] -> [Int]
-- concatlist [] = []
-- concatlist (xs:xss) = applist2 xs (concatlist xss)

-- main::IO()
-- main = putStrLn(show(concatlist [[1,2,3],[4,5,6,7]]))

-- Alternative Solution for Activity 3

-- concatlist2 :: [[Int]] -> [Int]
-- concatlist2 [] = []
-- concatlist2 (xs:xss) = xs ++ (concatlist xss)

-- main::IO()
-- main = putStrLn(show(concatlist2 [[1,2,3],[4,5,6,7]]))


-- Activity 4: Rewrite the function “concatList” using the higher-order function “foldr”.

-- concatlist3 :: [[Int]] -> [Int]
-- concatlist3 [] = []
-- concatlist3 xss = foldr (++) [] xss

-- main::IO()
-- main = putStrLn(show(concatlist3 [[1,2,3],[4,5,6,7]]))


-- Activity 5: A triangle number counts objects that may be arranged in an equilateral triangle. The ith triangle number is i × (i + 1)/2. Write a function “triangles” that generates this infinite sequence of triangle numbers, and use the function “take” to display just the first 20 elements.

-- triangle :: Int -> Int
-- triangle i = (i * (i+1)) `div` 2

-- triangles :: [Int]
-- triangles = take 20 (map triangle [1..])

-- main::IO()
-- main = putStrLn(show(triangles))