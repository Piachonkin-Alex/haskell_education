import System.Environment (getArgs)
import Sqeq (sq)

main :: IO ()
main = do
  [as, bs, cs] <- getArgs
  let
    a = read as
    b = read bs
    c = read cs
  putStrLn $ "Solutions: " ++ show(sq a b c)