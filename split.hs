split :: Int -> [a] -> ([a],[a])
split n [] = ([],[])
split n (x:xs) = if n==0 then ([],x:xs) else (x:ys,zs)
	where (ys,zs) = split (n-1) xs