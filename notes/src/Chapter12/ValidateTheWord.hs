module Chapter12.ValidateTheWord where

-- Use the Maybe type to write a function that counts the number of
-- vowels in a string and the number of consonants. If the number
-- of vowels exceeds the number of consonants, the function returns
-- Nothing. In many human languages, vowels rarely exceed the number
-- of consonants so when they do, it may indicate the input isn’t a word
-- (that is, a valid input to your dataset):

newtype Word' = Word' String deriving (Eq, Show)

vowels = "aeiou"

mkWord :: String -> Maybe Word'
mkWord = undefined