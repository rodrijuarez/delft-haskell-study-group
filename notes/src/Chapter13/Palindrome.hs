module Chapter13.Palindrome where

import Control.Monad
  
-- 2. Here is a very simple, short block of code. Notice it has a forever
-- that will make it keep running, over and over again. Load it into
-- your REPL and test it out. Then refer back to the chapter and
-- modify it to exit successfully after a False result.

palindrome :: IO ()
palindrome = forever $ do
  line1 <- getLine
  case (line1 == reverse line1) of
    True -> putStrLn "It's a palindrome!"
    False -> putStrLn "Nope!"

-- 3. If you tried using palindrome on a sentence such as “Madam
-- I’m Adam,” you may have noticed that palindrome checker
-- doesn’t work on that. Modifying the above so that it works on
-- sentences, too, involves several steps. You may need to refer
-- back to previous examples in the chapter to get ideas for proper
-- ordering and nesting. You may wish to import Data.Char to use
-- the function toLower. Have fun.