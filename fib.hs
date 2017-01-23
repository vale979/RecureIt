import System.IO
fibo x =
  if (x == 0) then 1 else if (x == 1) then 1
  else fibo (x-1) + fibo (x-2)
  
fakt x =
  if (x == 0) then 1 else x * fakt (x-1)
 
main :: IO()
main = do
  putStr "Masukkan sebuah bilangan bulat : "
  hFlush stdout
  x <- readLn
  putStr "Fibonacci ke-"
  putStr (show x)
  putStr " adalah : "
  hFlush stdout
  print (fibo x)
  putStr (show x)
  putStr "! = "
  hFlush stdout
  print (fakt x)