module Main where

interseccao a b = [x | x <- a, x `elem` b] 

main = do print(interseccao [3, 6, 5, 7] [9, 7, 5, 1, 3])