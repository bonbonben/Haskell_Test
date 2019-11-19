myIntersection :: (Eq a) => [a] -> [a] -> Bool
myIntersection as bs = null [x | x <- as, x  `elem` bs]

main :: IO ()
main = print $ myIntersection [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5] [100,50]
