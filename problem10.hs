-- Solution to Project Euler Problem 10
-- http://projecteuler.net/problem=10
-- 
-- by Zachary Sloss
-- 
-- Find the sum of all the primes below two million.

-- For efficiency, this does not work accurately on even numbers.
isPrime :: Integer -> Bool
isPrime n = [] == [ x | x <- [3, 5 .. ceiling (sqrt (fromIntegral(n)))], n `mod` x == 0]

solution = sum ([2] ++ [ x | x <- [3, 5 .. 1999999], isPrime x])
