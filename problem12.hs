-- Solution to Project Euler Problem 12
-- http://projecteuler.net/problem=12
-- 
-- by Zachary Sloss
-- 
-- What is the value of the first triangle number to have over five hundred divisors?

triNums = [ x + sum [0..(x-1)] | x <- [1..] ]

-- From problem3.hs
factors :: Integer -> [Integer]
factors n = [ x | x <- possibleFactors, divisible x] ++ [ (div n x) | x <- reverse possibleFactors, divisible x]
	where
		possibleFactors = [2..ceiling (sqrt (fromIntegral(n)))]
		divisible x = n `mod` x == 0

solution = head [ x | x <- triNums, length (factors x) > 500]
