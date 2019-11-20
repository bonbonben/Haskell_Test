myUnion :: (Eq a) => [a] -> [a] -> [a]
myUnion [] _ = []
myUnion _ [] = []
myUnion xs ys = nub' $ xs ++ ys where 
    nub' [] = []
    nub' (x:xs)
        | not $ x `elem` xs = x : nub' xs
        | otherwise = nub' xs

main :: IO ()
main = print $ myUnion [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5] [1, 100]
