module Main where

tuple lista = ([x | x <- lista, odd x], [x | x <- lista, (odd x) == False]) 

main = do print(tuple [1,2,3,4,5,6,7])