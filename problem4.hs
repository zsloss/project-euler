-- Solution to Project Euler Problem 4
-- http://projecteuler.net/problem=4
-- 
-- by Zachary Sloss
-- 
-- Find the largest palindrome made from the product of two 3-digit numbers.

solution = maximum [ x | x <- products, isPalindrome x]
	where
		products = [ a * b | a <- [100 .. 999], b <- [100 .. 999]]
		isPalindrome x = show x == reverse (show x)