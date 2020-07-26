import System.Environment (getArgs)

import Arithmetic (ar)

main :: IO()

main = do
  [fx, dx, nx] <- getArgs
  let
    f = read fx
    d = read dx
    n = read nx
  putStrLn $ "The sum of first n members of arithm progression is" ++ show(ar f d n)
