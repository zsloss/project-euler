-- Solution to Project Euler Problem 9
-- http://projecteuler.net/problem=9
-- 
-- by Zachary Sloss
-- 
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

solution = product (head [ [a,b,c] | a <- [1..333], b <- [(a+1)..1000-(a*2)], c <- [b..1000], a^2 + b^2 == c^2, a + b + c == 1000 ])
