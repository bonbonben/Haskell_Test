myMaximum :: Ord a => [a] -> a
myMaximum [x] = x
myMaximum (x:xs) | (myMaximum xs) > x = myMaximum xs
                | otherwise = x

main :: IO ()
main = print $ myMaximum [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5]
