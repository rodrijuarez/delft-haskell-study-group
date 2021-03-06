module Chapter16.RearrangeTheArguments where

-- Rearrange the arguments to the type constructor of the datatype
-- so the Functor instance works.

-- 1. 
data Sum a b =
    First a
  | Second b

-- instance Functor (Sum e) where
--   fmap f (First a) = First (f a)
--   fmap f (Second b) = Second b


-- 2. 
data Company a b c =
    DeepBlue a c
  | Something b

-- instance Functor (Company e e') where
--   fmap f (Something b) = Something (f b)
--   fmap _ (DeepBlue a c) = DeepBlue a c


-- 3.
data More a b =
    L a b a
  | R b a b
  deriving (Eq, Show)

-- instance Functor (More x) where
--   fmap f (L a b a') = L (f a) b (f a')
--   fmap f (R b a b') = R b (f a) b

-- Keeping in mind that it should result in a Functor that does the
-- following:
-- 
-- Prelude> fmap (+1) (L 1 2 3)
-- L 2 2 4
-- Prelude> fmap (+1) (R 1 2 3)
-- R 1 3 3