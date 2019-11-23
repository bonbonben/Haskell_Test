myFinal :: [a] -> a
--one element left
myFinal [x] = x
--if there's anything in the head, continue until there's one element left
myFinal (_:xs) = myFinal xs
myFinal [] = error "empty list"

main :: IO ()
main = print $ myFinal [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5]
