module TryEval (tryEval) where

import Control.Parallel.Strategies

n = 30

fib :: Integer -> Integer
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

pp = rpar
tryEval = runEval $ do
  a <- pp (fib n)
  b <- pp (fib n)
  c <- pp (fib n)
  d <- pp (fib n)
  return (a, b, c, d)
