module SampleApp.Lib where

import Prelude

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.Nullable (Nullable)
import Data.Nullable as Nul
import SampleAppTsBridge.MyTsBridgeClass (class ToTsBridge, Tok(..), toTsBridge)
import TsBridge (TsModuleFile, tsModuleFile, tsValues)
import TsBridge as TSB

moduleName :: String
moduleName = "SampleApp.Lib"

type User =
  { name :: String
  , age :: Number
  , hobbies :: Array String
  , address :: Maybe String
  }

newtype User_ = User_ User

derive instance Newtype User_ _

instance ToTsBridge User_ where
  toTsBridge = TSB.defaultBrandedType Tok moduleName "User_" [] []

val1 :: Number
val1 = 12.0

val2 :: Number
val2 = 13.0

foo :: Number -> String
foo _ = ""

id :: forall a. a -> a
id x = x

bla :: Nullable String
bla = Nul.toNullable Nothing

user1 :: User
user1 =
  { name: "Foo"
  , age: 99.0
  , hobbies: [ "biking", "running" ]
  , address: Nothing
  }

user2 :: User_
user2 = User_
  { name: "Foo"
  , age: 99.0
  , hobbies: [ "biking", "running" ]
  , address: Nothing
  }

tsModules :: Array TsModuleFile
tsModules =
  tsModuleFile "SampleApp.Lib/index"
    [ tsValues Tok
        { val1
        , val2
        , user1
        , user2
        , foo
        , bla
        }
    ]