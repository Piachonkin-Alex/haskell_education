import System.Environment (getArgs, getProgName)
import Sqeq (sq)
import System.Exit (die)
main :: IO ()
main = do
  prog <- getProgName
  args <- getArgs
  case args of
    [as, bs, cs] ->
      let 
        a = read as
        b = read bs
        c = read cs
      in putStrLn $ "Solutions: " ++ show(sq a b c)
    _ -> die $ "Usage:" ++ prog ++ " NUMBER NUMBER NUMBER"