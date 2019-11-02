import Data.List (maximumBy)
import Data.Ord (comparing)

len :: [a] -> Int
len []  = 0
len (x:xs) = 1 + len xs

splitBySpace :: String -> [String]
splitBySpace "" = [""]
splitBySpace (x:xs)
    | x == ' ' = "" : remaining
    | otherwise =  (x : head remaining) : tail remaining
    where
        remaining = splitBySpace xs

longestString :: String -> String
longestString s = maximumBy (comparing len) (splitBySpace s)

main :: IO ()
--main = mapM_ print $ longestString "This is programming in Haskell"
main = print $ longestString "This is programming in Haskell"
