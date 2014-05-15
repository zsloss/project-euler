-- Solution to Project Euler Problem 7
-- http://projecteuler.net/problem=7
-- 
-- by Zachary Sloss
-- 
-- What is the 10 001st prime number?

-- For efficiency, this does not work accurately on even numbers.
isPrime :: Integer -> Bool
isPrime n = [] == [ x | x <- [3, 5 .. ceiling (sqrt (fromIntegral(n)))], n `mod` x == 0]

solution = last (take 10001 ([2] ++ [ x | x <- [3, 5..], isPrime x]))