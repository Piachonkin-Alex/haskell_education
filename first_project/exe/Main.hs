import System.Environment (getArgs, getProgName)
import Sqeq (sq)
import System.Exit (die)
import Options.Applicative (helper, info, execParser, header, fullDesc, progDesc, argument, auto, metavar, help, value, option, long, short, Parser)
import Control.Applicative ((<**>))

data Options = Options{a,b,c :: Double, lang :: Language}

data Language = Ru | En
  deriving (Read, Show)
main :: IO ()
main = do
  Options {a = a, b = b, c = c, lang = lang} <- execParser parserInfo
  let 
    solution = 
      case lang of
        En -> "Solutions"
        Ru -> "Решения"
  putStrLn $ solution ++ ": " ++ show(sq a b c)

parserInfo = 
  info 
    (parser <**> helper)
    ( fullDesc <> header "Solve square equation")

parser :: Parser Options
parser =
  Options 
  <$> argument auto ( metavar "A" <> help "x^2 term")
  <*> argument auto (metavar "B" <> help "x term")
  <*> argument auto (metavar "C" <> help "free term") 
  <*> option auto (metavar "language" <> help "Language (En, Ru)" <> value En <> long "Language" <> short 'l')

  


{-  prog <- getProgName
  args <- getArgs
  case args of
    [as, bs, cs] ->
      let 
        a = read as
        b = read bs
        c = read cs
      in putStrLn $ "Solutions: " ++ show(sq a b c)
    _ -> die $ "Usage:" ++ prog ++ " NUMBER NUMBER NUMBER"-}