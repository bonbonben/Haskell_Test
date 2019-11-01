findSum :: [Int] -> Int -> [(Int, Int)]
findSum ns n =
  -- Number the elements of a list
  let s = zip [0 ..] ns
  in [ (x, y)
     | (i, x) <- s
     , (j, y) <- drop (i + 1) s
     , (x + y) == n ]

main :: IO ()
main = mapM_ print $ findSum [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5] 12
