myAllPairs :: Ord a => ([a], [a]) -> [(a,a)]
myAllPairs (xs, ys) =
    do
        x <- xs
        y <- ys
        return (x,y)

main :: IO ()
main = print $ myAllPairs ([1, 2, 3], [4, 5, 6, 7])
