disjoint xs [] = True
disjoint [] ys = True
disjoint xs'@(x:xs) ys'@(y:ys)
	| x < y = disjoint xs ys'
	| x == y = False
	| x > y = disjoint xs' ys