-- Solution to Project Euler Problem 3
-- http://projecteuler.net/problem=3
-- 
-- by Zachary Sloss
-- 
-- What is the largest prime factor of the number 600851475143 ?

-- Lists the factors of a number, n.
factors :: Integer -> [Integer]
factors n = [ x | x <- possibleFactors, divisible x] ++ [ (div n x) | x <- reverse possibleFactors, divisible x]
	where
		possibleFactors = [2..ceiling (sqrt (fromIntegral(n)))]
		divisible x = n `mod` x == 0

-- True if n is prime, false if not.
isPrime :: Integer -> Bool
isPrime n = [] == [ x | x <- [2..ceiling (sqrt (fromIntegral(n)))], n `mod` x == 0]

solution = last [ x | x <- factors 600851475143, isPrime x]