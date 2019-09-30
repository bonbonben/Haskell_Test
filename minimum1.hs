mini :: Ord a => [a] -> a
mini [x] = x
mini (x:xs) = x `min` minimum xs