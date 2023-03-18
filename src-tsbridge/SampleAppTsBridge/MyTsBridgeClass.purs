module SampleAppTsBridge.MyTsBridgeClass where

import Data.Either (Either)
import Data.Generic.Rep as Auto.Data.Generic.Rep
import Data.Maybe (Maybe)
import Data.Ordering as Auto.Data.Ordering
import Prim.RowList (class RowToList)
import SampleApp.Lib as Auto.SampleApp.Lib
import TsBridge (Var)
import TsBridge as TSB
import Type.Proxy (Proxy(..))

class ToTsBridge a where
  toTsBridge :: a -> TSB.TsBridgeM TSB.TsType

data MappingToTsBridge = Mp

instance ToTsBridge a => TSB.Mapping MappingToTsBridge a (TSB.TsBridgeM TSB.TsType) where
  mapping _ = toTsBridge

instance ToTsBridge a => ToTsBridge (Proxy a) where
  toTsBridge = TSB.defaultProxy Mp

instance (ToTsBridge a, ToTsBridge b) => ToTsBridge (Either a b) where
  toTsBridge = TSB.defaultOpaqueType "Data.Either" "Either" [ "A", "B" ]
    [ toTsBridge (Proxy :: _ a), toTsBridge (Proxy :: _ b) ]

instance ToTsBridge Number where
  toTsBridge = TSB.defaultNumber

instance (TSB.DefaultRecord MappingToTsBridge r) => ToTsBridge (Record r) where
  toTsBridge = TSB.defaultRecord Mp

instance ToTsBridge String where
  toTsBridge = TSB.defaultString

instance ToTsBridge Boolean where
  toTsBridge = TSB.defaultBoolean

instance ToTsBridge a => ToTsBridge (Array a) where
  toTsBridge = TSB.defaultArray Mp

instance (ToTsBridge a, ToTsBridge b) => ToTsBridge (a -> b) where
  toTsBridge = TSB.defaultFunction Mp

instance ToTsBridge a => ToTsBridge (Maybe a) where
  toTsBridge = TSB.defaultOpaqueType "Data.Maybe" "Maybe" [ "A" ]
    [ toTsBridge (Proxy :: _ a) ]

instance ToTsBridge (TSB.Var "A") where
  toTsBridge _ = TSB.defaultTypeVar (TSB.Var :: _ "A")

instance ToTsBridge (TSB.Var "B") where
  toTsBridge _ = TSB.defaultTypeVar (TSB.Var :: _ "B")

instance ToTsBridge (TSB.Var "C") where
  toTsBridge _ = TSB.defaultTypeVar (TSB.Var :: _ "C")