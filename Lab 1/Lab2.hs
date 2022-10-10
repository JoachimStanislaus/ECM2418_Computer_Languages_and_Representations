-- Activity 1: Write a Haskell function “memberSet” that may be used to test for set membership

-- memberset :: Int -> [Int] -> Bool

-- memberset e [] = False

-- memberset e (x:xs)
--    | e == x = True
--    | otherwise = memberset e xs

-- main:: IO()
-- main = putStrLn(show(memberset 9 [1,2,3,4,5,6]))


-- Activity 2: Write a Haskell function “unionSet” that may be used to find the union of two sets.

-- memberset :: Int -> [Int] -> Bool

-- memberset e [] = False

-- memberset e (x:xs)
--    | e == x = True
--    | otherwise = memberset e xs

-- unionset :: [Int] -> [Int] -> [Int]

-- unionset [] us = us

-- unionset (t:ts) us
--    | memberset t us = unionset ts us
--    | otherwise = t : unionset ts us

-- main:: IO()
-- main = putStrLn(show(unionset [1,2,3,4][4,5,6,7]))

-- Activity 3: Write a function “intersectSet” that may be used to find the intersection of two sets.

-- memberset :: Int -> [Int] -> Bool

-- memberset e [] = False

-- memberset e (x:xs)
--    | e == x = True
--    | otherwise = memberset e xs

-- intersectset :: Eq a => [a] -> [a] -> [a]

-- intersectset [] us = []
-- intersectset (t:ts) us
--    | memberset t us = t : intersectset ts us
--    | otherwise = intersectset ts us

-- main :: IO()
-- main = putStrLn(show(intersectset [1,2,3,4][4,5,6]))

-- Activity 4: Write a function “takeList” that takes n elements from a list, if possible.

-- takelist :: Int -> [Int] -> [Int]
-- takelist 0 xs = []
-- takelist n [] = []
-- takelist n (x:xs) 
--    = x : takelist (n-1) xs

-- main :: IO()
-- main = putStrLn(show(takelist 2 [1,2,3,4,5]))

-- Activity 5: Write a function “dropList” that drops n elements from a list, if possible.

-- droplist :: Int -> [Int] -> [Int]
-- droplist 0 xs = xs
-- droplist n [] = []
-- droplist n (x:xs) = droplist (n-1) xs

-- main :: IO()
-- main = putStrLn(show(droplist 2 [1,2,3,4,5]))

-- Activity 6: Write a function “split” which takes a list, and splits it at element n.

-- split :: Int -> [a] -> ([a],[a])
-- split 0 xs = ([],xs)
-- split n (x:xs) = (x:as,bs) where (as , bs) = split (n-1) xs


-- main :: IO()
-- main = putStrLn(show(split 4 [1,2,3,4,5,6]))