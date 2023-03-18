module SampleApp.Lib where

import Prelude

import Data.Maybe (Maybe(..))

type MyNumber = Number

type User =
  { name :: String
  , age :: Number
  , hobbies :: Array String
  , address :: Maybe String
  }

val1 :: Number
val1 = 12.0

val2 = 13.0

user1 :: User
user1 =
  { name: "Foo"
  , age: 99.0
  , hobbies: [ "biking", "running" ]
  , address: Nothing
  }