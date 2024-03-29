doubleMe x = x + x  
doubleUs x y = doubleMe x + doubleMe y   
doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2 
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1  
godO'Ben = "It's a-me, God O'Ben!"   
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   
length' xs = sum [1 | _ <- xs]   
removeNonUppercase :: [Char] -> [Char] 
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]  