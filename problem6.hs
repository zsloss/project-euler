-- Solution to Project Euler Problem 6
-- http://projecteuler.net/problem=6
-- 
-- by Zachary Sloss
-- 
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

solution = ((sum [1..100]) ** 2) - (sum [ x ** 2 | x <- [1..100]]) 