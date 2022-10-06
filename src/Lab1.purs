module Lab1 where

import Prelude hiding(flip)

import Data.List (List(..), (:)) -- hiding(null)
-- import Data.Maybe (Maybe(..))

import Effect(Effect)
import Effect.Console (log)


-- singleton function
singleton :: forall a. a -> List a
singleton a = a : Nil

-- null function
null :: forall a. List a -> Boolean
null Nil = true
null _ = false

-- snoc function
snoc :: forall a. List a -> a -> List a
-- ...
snoc (x : a : _) xs = (x : a : xs : Nil)
snoc (x : _) xs = (x : xs : Nil)
snoc Nil xs = Cons xs Nil

-- length function
length :: forall a. List a -> Int
-- ...
length (x : xs : _) = 2
length (x : _) = 1
length Nil = 0


test::Effect Unit
test = do
   log $ show $ singleton "Hello world in List"
   log $ show $ null (Cons "one element" Nil)
   log $ show $ null Nil
   log $ show $ snoc Nil "Test option"
   log $ show $ snoc (Cons 1 Nil) 2
   log $ show $ snoc (1 : 5 : Nil) 10
   log $ show $ length Nil
   log $ show $ length (Cons 10 Nil)
   log $ show $ length (1 : 2 : Nil)
   -- log $ show $ ("22" : "First" : ("Second" : Nil))