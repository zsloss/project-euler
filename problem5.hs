-- Solution to Project Euler Problem 5
-- http://projecteuler.net/problem=5
-- 
-- by Zachary Sloss
-- 
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

-- Order optimised for efficiency.
range = [19, 17, 13, 11, 12, 14, 15, 16, 17, 18, 19, 20]

evenlyDivides a b = mod a b == 0

listEvenlyDivides n = all (evenlyDivides n) range

-- Increment by largest necessary factor, 20.
solution = head (filter (listEvenlyDivides) [2520, 2540..])