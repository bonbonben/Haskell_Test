import Data.List

partitions :: [a] -> [[[a]]]
partitions [] = [[]]
partitions (x : xs) =
  concat (map (prepend [x]) (partitions xs))	--prepend head to each partitioned tail then concat

prepend :: [a] -> [[a]] -> [[[a]]]
prepend ys [] = [[ys]]
prepend ys (xs:xss) =
   (ys : xs : xss) : prepend (ys ++ xs) xss		--not add or add one list of list in a time

bestsum :: [Int] -> [[Int]]
bestsum = minimumBy bs . partitions
  where bs xs ys = compare (sumcost xs) (sumcost ys)

sumcost :: [[Int]] -> Int
sumcost = sum . map c

c :: [Int] -> Int
c [] = 0
c (x : xs) = last (x : xs)

type Vertex = Int
type Weight = Int
type Edge = [[Int]]
test :: Edge -> Int
test = undefined