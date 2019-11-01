findSum :: Int -> [Int] -> [(Int, Int)]
findSum n ns =
  -- Number the elements of a list
  let s = zip [0 ..] ns
  in [ (x, y)
     | (i, x) <- s
     , (j, y) <- drop (i + 1) s
     , (x + y) == n ]

extendedFindSum :: [Int] -> [[(Int, Int)]]
extendedFindSum ns =
  let upper = ((2 * maximum ns)-1)
      lower = ((2 * minimum ns)+1)
  in  [findSum temp ns | temp <- [lower..upper]]

main :: IO ()
main = mapM_ print $ extendedFindSum [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5]
