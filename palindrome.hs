import Data.Char (toLower,isAlpha)

palindrome :: IO()
palindrome = do {putStrLn "enter a string:";xs <- getLine;if isPalindrome xs then putStrLn "yes" else putStrLn "no"}

isPalindrome :: String -> Bool
isPalindrome xs = (ys == reverse ys)
	where ys = map toLower (filter isAlpha xs)