module SampleApp.Lib where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Prom
import DTS as DTS
import Data.Either (Either(..))
import Data.Either as Either
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.Nullable (Nullable, null)
import Data.Nullable as Nul
import Data.Tuple (Tuple(..))
import Data.Variant (Variant)
import Data.Variant as V
import Effect (Effect)
import Effect.Class.Console (log)
import SampleApp.TsBridge.Class (class TsBridge, Tok(..))
import TsBridge as TSB
import Type.Proxy (Proxy(..))

moduleName :: String
moduleName = "SampleApp.Lib"

--------------------------------------------------------------------------------

animals :: Array String
animals = [ "cat", "dog", "fish" ]

isLoggedIn :: Boolean
isLoggedIn = false

alpha :: Char
alpha = 'a'

runIt :: Effect Unit
runIt = log "hello!"

result :: Either String Int
result = Left "error"

calculate :: Int -> Int -> Int
calculate x y = x + y - 34

age :: Int
age = 99

username :: Maybe String
username = Just "anton"

gravity :: Number
gravity = 9.81

name :: String
name = "Anna"

pair :: Tuple Int Boolean
pair = Tuple 34 true

nada :: Unit
nada = unit

dish :: Nullable String
dish = Nul.notNull "pizza"

wish :: Variant (luck :: Int, strength :: Int)
wish = V.inj (Proxy :: _ "luck") 32

user
  :: { name :: String
     , age :: Int
     , hobbies :: Array String
     , address :: Nullable String
     }
user =
  { name: "Santa"
  , age: 99
  , hobbies: [ "biking", "running" ]
  , address: null
  }

letsPromise :: Effect (Promise Number)
letsPromise = Prom.fromAff $ pure 12.0

--------------------------------------------------------------------------------

data Species = Animal | Human | Alien

instance TsBridge Species where
  tsBridge = TSB.tsBridgeOpaqueType { moduleName, typeName: "Species", typeArgs: [] }

alien :: Species
alien = Alien

--------------------------------------------------------------------------------

newtype Celsius = Celsius Number

derive instance Newtype Celsius _

instance TsBridge Celsius where
  tsBridge = TSB.tsBridgeNewtype Tok { moduleName, typeName: "Celsius", typeArgs: [] }

temperature :: Celsius
temperature = Celsius 36.2

--------------------------------------------------------------------------------

type A = TSB.TypeVar "A"

type B = TSB.TypeVar "B"

type C = TSB.TypeVar "C"

darkness :: forall a. Unit -> Maybe a
darkness _ = Nothing

mapMaybe :: forall a b. (a -> b) -> Maybe a -> Maybe b
mapMaybe = map

either :: forall a b c. (a -> c) -> (b -> c) -> Either a b -> c
either = Either.either

--------------------------------------------------------------------------------

tsModules :: Either TSB.AppError (Array DTS.TsModuleFile)
tsModules =
  TSB.tsModuleFile moduleName
    [ TSB.tsValues Tok
        { animals
        , isLoggedIn
        , alpha
        , runIt
        , result
        , calculate
        , age
        , username
        , gravity
        , name
        , pair
        , nada
        , dish
        , wish
        , user
        , letsPromise
        , alien
        , temperature
        }
    , TSB.tsValues Tok
        ({ darkness } :: { darkness :: _ -> _ A })
    , TSB.tsValues Tok
        ({ mapMaybe } :: { mapMaybe :: (A -> B) -> _ })
    , TSB.tsValues Tok
        ({ either } :: { either :: (A -> C) -> (B -> _) -> _ })
    ]