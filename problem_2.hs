-- Calculates the nth fibonacci number
nthFibonacci :: Integer -> Integer
nthFibonacci 1 = 1
nthFibonacci 2 = 1
nthFibonacci n = nthFibonacci(n-1)+nthFibonacci(n-2)

--Calculates the sum of even fibonacci numbers with a value less than 4,000,000
--m is the current value of the sum, n is the current fibonacci number 
--this exploits the fact that every 3rd fibonacci number is even to avoid doing modular division, didnt speed things up as much as I had hoped 
evenFibSum :: (Integer, Integer,Integer) -> Integer
evenFibSum (m, n,fibn)  
  | fibn > 4000000 = m
  | otherwise = evenFibSum(m+fibn,n+3,nthFibonacci(n+3))  
 
main = print(evenFibSum(0,3,nthFibonacci(3)))
   
      
   