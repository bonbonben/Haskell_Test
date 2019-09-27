foo1 n = sum (take n primes)
	where 
	primes = [x | x <- [2..], divisors x == [x]]
	divisors x = [d | d <- [2..x], x `mod` d == 0]