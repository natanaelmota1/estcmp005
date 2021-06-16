leInt2 :: IO(Int)
leInt2 = do n <- getLine
            return (read n)

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = do x <- leInt2 
          print (fib x)
