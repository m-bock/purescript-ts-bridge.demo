module SampleAppTsBridge.MyTsBridgeClass where

import Data.Either (Either)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable)
import Data.Symbol (class IsSymbol)
import TsBridge as TSB
import Type.Proxy (Proxy(..))

class ToTsBridge a where
  toTsBridge :: a -> TSB.TsBridgeM TSB.TsType

data Tok = Tok

instance ToTsBridge a => TSB.ToTsBridgeBy Tok a where
  toTsBridgeBy _ = toTsBridge

instance ToTsBridge a => ToTsBridge (Proxy a) where
  toTsBridge = TSB.defaultProxy Tok

instance (ToTsBridge a, ToTsBridge b) => ToTsBridge (Either a b) where
  toTsBridge = TSB.defaultOpaqueType "Data.Either" "Either" [ "A", "B" ]
    [ toTsBridge (Proxy :: _ a), toTsBridge (Proxy :: _ b) ]

instance ToTsBridge Number where
  toTsBridge = TSB.defaultNumber

instance (TSB.DefaultRecord Tok r) => ToTsBridge (Record r) where
  toTsBridge = TSB.defaultRecord Tok

instance ToTsBridge String where
  toTsBridge = TSB.defaultString

instance ToTsBridge Boolean where
  toTsBridge = TSB.defaultBoolean

instance ToTsBridge a => ToTsBridge (Array a) where
  toTsBridge = TSB.defaultArray Tok

instance ToTsBridge a => ToTsBridge (Nullable a) where
  toTsBridge = TSB.defaultNullable Tok

instance (ToTsBridge a, ToTsBridge b) => ToTsBridge (a -> b) where
  toTsBridge = TSB.defaultFunction Tok

instance ToTsBridge a => ToTsBridge (Maybe a) where
  toTsBridge = TSB.defaultOpaqueType "Data.Maybe" "Maybe" [ "A" ]
    [ toTsBridge (Proxy :: _ a) ]

instance IsSymbol sym => ToTsBridge (TSB.Var sym) where
  toTsBridge _ = TSB.defaultTypeVar (TSB.Var :: _ sym)
