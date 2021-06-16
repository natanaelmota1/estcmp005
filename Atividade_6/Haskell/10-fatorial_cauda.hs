module Main where

aux num parcial = 
    if num == 1 then 
                    parcial else 
                                aux (num-1) (parcial*num)
fatorialRC num = aux num 1

main = do n <- readLn
          print(fatorialRC n) 
