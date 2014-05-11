-- Solution to Project Euler Problem 2
-- http://projecteuler.net/problem=2
-- 
-- by Zachary Sloss
-- 
-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

solution = sum [ x | x <- takeWhile(<=4000000) fibs, even x]
	where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
