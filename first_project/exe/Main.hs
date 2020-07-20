{-# OPTIONS -Wall #-}
import Sqeq (sq)

main :: IO ()
main = do
  a <- readLn
  b <- readLn
  c <- readLn
  print $ sq a b c

  
-- $> main