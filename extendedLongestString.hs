import Data.List
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

extendedLongestString :: String -> [String]
extendedLongestString ns =
    [ x
    | x <- splitBySpace ns
    , len x == head (maximumBy (comparing len) (group (sort (map len (splitBySpace ns))))) ]

main :: IO ()
main = print $ extendedLongestString "This is a four letter cat"
