-- Solution to Project Euler Problem 1
-- http://projecteuler.net/problem=1
-- 
-- by Zachary Sloss
-- 
-- Finds the sum of all the multiples of 3 or 5 below 1000.

solution = sum [x | x <- [1 .. 999], x `mod` 3 == 0 || x `mod` 5 == 0]