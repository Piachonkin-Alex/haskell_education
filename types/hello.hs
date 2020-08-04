data Quality = Ugly | Bad | Good
  --deriving (Eq, Ord)
  deriving(Show)



instance Eq Quality where
  Ugly == Ugly = True
  Bad == Bad = True
  Good == Good = True
  _ == _ = False



instance Ord Quality where
  Ugly <= Bad    = True
  Bad  <= Good    = True
  Ugly <= Good   = True
  a    <= b         = a == b

{-showQuality q =
  case q of
    Ugly -> "Ugly"
    Good -> "Good"
    Bad -> "Bad"-}

type Size = Double

data Character = TCharacter{ quality :: Quality,  size :: Double}
  deriving(Show)
-- :set -XNamedFieldPuns
-- case x of TCharacter{quality = q, size = s} -> print s
-- case x of TCharacter{quality, size} -> print size
-- :set -XRecordWildCards
-- case x of TCharacter{..} -> print size
-- data Maybe a = Nothing | Just a
find :: Char -> String -> Maybe Integer


find c s = undefined

usefind :: IO()
usefind =
  case find '?' "..." of
    Nothing -> putStrLn "not found"
    Just index -> print index

data List a = Nil | Cons a (List a)
  deriving Show

data [a] = [] | a : [a]


data MaybeInteger = NoInteger | HaveInteger Integer


-- $> Character Good 42.3
-- undefined -- заглушка любого типа
main :: IO()
main = pure ()