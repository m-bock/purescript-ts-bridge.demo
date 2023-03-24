module SampleAppTsBridge.MyTsBridgeClass where

import Prelude

import Data.Either (Either)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable)
import Data.Symbol (class IsSymbol)
import Data.Variant (Variant)
import Effect (Effect)
import TsBridge as TSB
import Type.Proxy (Proxy(..))

class TsBridge a where
  tsBridge :: Proxy a -> TSB.TsBridgeM TSB.TsType

data Tok = Tok

instance TsBridge a => TSB.TsBridgeBy Tok a where
  tsBridgeBy _ = tsBridge

instance (TsBridge a, TsBridge b) => TsBridge (Either a b) where
  tsBridge = TSB.defaultOpaqueType "Data.Either" "Either" [ "A", "B" ]
    [ tsBridge (Proxy :: _ a), tsBridge (Proxy :: _ b) ]

instance TsBridge Number where
  tsBridge = TSB.defaultNumber

instance (TSB.DefaultRecord Tok r) => TsBridge (Record r) where
  tsBridge = TSB.defaultRecord Tok

instance (TSB.DefaultVariant Tok r) => TsBridge (Variant r) where
  tsBridge = TSB.defaultVariant Tok

instance TsBridge String where
  tsBridge = TSB.defaultString

instance TsBridge Boolean where
  tsBridge = TSB.defaultBoolean

instance TsBridge Int where
  tsBridge = TSB.defaultInt

instance TsBridge Char where
  tsBridge = TSB.defaultChar

instance TsBridge Unit where
  tsBridge = TSB.defaultUnit

instance TsBridge a => TsBridge (Array a) where
  tsBridge = TSB.defaultArray Tok

instance TsBridge a => TsBridge (Effect a) where
  tsBridge = TSB.defaultEffect Tok

instance TsBridge a => TsBridge (Nullable a) where
  tsBridge = TSB.defaultNullable Tok

instance (TsBridge a, TsBridge b) => TsBridge (a -> b) where
  tsBridge = TSB.defaultFunction Tok

instance TsBridge a => TsBridge (Maybe a) where
  tsBridge = TSB.defaultOpaqueType "Data.Maybe" "Maybe" [ "A" ]
    [ tsBridge (Proxy :: _ a) ]

instance IsSymbol sym => TsBridge (TSB.Var sym) where
  tsBridge _ = TSB.defaultTypeVar (TSB.Var :: _ sym)
