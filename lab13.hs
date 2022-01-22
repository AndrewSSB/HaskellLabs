import Data.Monoid


elem :: (Foldable t, Eq a) => a -> t a -> Bool
elem = undefined

null :: (Foldable t) => t a -> Bool
null = undefined

length :: (Foldable t) => t a -> Int
length = undefined

toList :: (Foldable t) => t a -> [a]
toList = undefined

fold :: (Foldable t, Monoid m) => t m -> m
fold = undefined -- Hint: folosiți foldMap

data Constant a b = Constant b

data Two a b = Two a b

data Three a b c = Three a b c

data Three' a b = Three' a b b

data Four' a b = Four' a b b b

data GoatLord a = NoGoat | OneGoat a | MoreGoats (GoatLord a) (GoatLord a) (GoatLord a)
