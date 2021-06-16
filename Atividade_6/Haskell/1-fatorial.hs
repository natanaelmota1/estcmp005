module Main where

fatorial 0 = 1
fatorial n = fatorial(n-1)*n

main = do n <-readLn 
          print (fatorial n)
