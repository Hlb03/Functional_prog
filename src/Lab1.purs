module Lab1 where

import Prelude hiding(flip)

import Data.List (List(..), (:)) -- hiding(null)
import Data.List ((:))
import Data.Maybe (Maybe(..))

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
snoc Nil x = singleton(x)
snoc (Cons head tail) x = Cons head $ snoc tail x


-- length function
length :: forall a. List a -> Int
length Nil = 0
length (Cons _ tail) = 1 + length tail


test::Effect Unit
test = do
   log $ show $ singleton "Hello world in List"
   log $ show $ null (Cons "one element" Nil)
   log $ show $ null Nil
   log $ show $ snoc ("a" : "b" : "c" : Nil) "d"
   log $ show $ length (1 : 2 : 3 : Nil)
   log $ show $ length Nil