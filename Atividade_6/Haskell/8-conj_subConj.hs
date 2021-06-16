module Subsets
    (
      subsets
    ) where


subsets :: [a] -> [[a]]
subsets [] = [[]] 
subsets (x:list) = subsets list ++ map (x:) (subsets list)