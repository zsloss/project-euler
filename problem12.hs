-- Solution to Project Euler Problem 12
-- http://projecteuler.net/problem=12
-- 
-- by Zachary Sloss
-- 
-- What is the value of the first triangle number to have over five hundred divisors?

triNums = [ x + sum [0..(x-1)] | x <- [1..] ]

factors n = [ x | x <- [1..(div n 2) + 1] ++ [n], mod n x == 0 ]

solution = head [ x | x <- triNums, length (factors x) > 500]
