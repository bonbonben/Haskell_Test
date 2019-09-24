quicksort [] = []
quicksort (x:xs) = quicksort smallerOrEqual ++ [x] ++ quicksort bigger
    where smallerOrEqual = [a | a <- xs, a <= x]
          bigger = [b | b <- xs, b > x]
