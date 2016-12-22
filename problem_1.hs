-- this code sums the integer multiples of 3 to 5 within the set [0,999]   

functionSum :: Integer -> Integer
functionSum 0 = 0
functionSum n
  | n `mod` 3 == 0 = n + functionSum(n-1)  
  | n `mod` 5 == 0 = n + functionSum(n-1)
  | otherwise = 0 + functionSum(n-1)

main = print(functionSum 999) 