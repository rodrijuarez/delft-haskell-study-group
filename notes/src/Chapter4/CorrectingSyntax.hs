module Chapter4.CorrectingSyntax where

-- Ex. 1
x = (+)

-- F xs = w 'x' 1
--      where w = length xs
f xs = w `x` 1
     where w = length xs


-- Ex. 2
-- answer = \ X = x
answer = \ x -> x


-- Ex. 3
-- answer' = \ x : xs -> x
answer' = \ (x : xs) -> x


-- Ex. 4
-- f' (a b) = A
f' (a, b) = a
