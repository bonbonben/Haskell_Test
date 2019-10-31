myZip :: [a] -> [a] -> [(a,a)]
myZip xs [] = []
myZip [] ys = []
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys

main :: IO ()
main = print $ myZip [1,2,3,4,5] [1,4]