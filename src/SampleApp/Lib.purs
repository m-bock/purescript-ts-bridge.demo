module SampleApp.Lib where

import Prelude

import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.Nullable (Nullable, null)
import Data.Nullable as Nul
import Data.Variant (Variant)
import Data.Variant as V
import Effect (Effect)
import Effect.Class.Console (log)
import SampleAppTsBridge.MyTsBridgeClass (class TsBridge, Tok(..))
import TsBridge (TsModuleFile, tsModuleFile, tsValues)
import TsBridge as TSB
import Type.Proxy (Proxy(..))

moduleName :: String
moduleName = "SampleApp.Lib"

type User =
  { name :: String
  , age :: Int
  , hobbies :: Array String
  , address :: Nullable String
  }

newtype User_ = User_ User

mkUser = User_

derive instance Newtype User_ _

instance TsBridge User_ where
  tsBridge = TSB.defaultNewtype Tok moduleName "User_" [] []

val1 :: Number
val1 = 12.0

val2 :: Number
val2 = 13.0

foo :: Number -> String
foo _ = ""

id :: forall a. a -> a
id x = x

app :: String -> Boolean -> Effect Unit
app _ _ = log "hello"

bla :: Nullable { x :: Number, y :: Number }
bla = Nul.toNullable Nothing

user1 :: User
user1 =
  { name: "Foo"
  , age: 99
  , hobbies: [ "biking", "running" ]
  , address: null
  }

user2 :: User_
user2 = User_
  { name: "Foo"
  , age: 99
  , hobbies: [ "biking", "running" ]
  , address: null
  }

type Foo = Variant
  ( bar :: Number
  , baz :: String
  )

x :: Foo
x = V.inj (Proxy :: _ "bar") 3.0

-- foreign import data NativeTuple :: Type -> Type -> Type

-- instance (TsBridge a, TsBridge b)=>  TsBridge (NativeTuple a b) where
--   tsBridge = ado
--     x <- tsBridge (Proxy :: _ a)
--     y <- tsBridge (Proxy :: _ b)
--     in DTS.UnsafeInline ("[" <> printTsType x <> "," <> printTsType y <> "] as const")

-- mkNativeTuple :: forall a b. a -> b -> NativeTuple a b
-- mkNativeTuple x y = unsafeCoerce $ [ unsafeCoerce x, unsafeCoerce y ]

tsModules :: Array TsModuleFile
tsModules =
  tsModuleFile "SampleApp.Lib"
    [ tsValues Tok
        { val1
        , val2
        , user1
        , user2
        , foo
        , bla
        , app
        , x
        , mkUser
        }
    ]