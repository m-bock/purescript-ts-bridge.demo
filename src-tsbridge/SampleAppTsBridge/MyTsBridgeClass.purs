module SampleAppTsBridge.MyTsBridgeClass where

import Data.Either (Either)
import Data.Generic.Rep as Auto.Data.Generic.Rep
import Data.Ordering as Auto.Data.Ordering
import SampleApp.Lib as Auto.SampleApp.Lib
import TsBridge (class Mapping, TsBridgeM, TsType, defaultNumber, defaultOpaqueType, defaultProxy, tsOpaqueType)
import Type.Proxy (Proxy(..))

class ToTsBridge a where
  toTsBridge :: a -> TsBridgeM TsType

data MappingToTsBridge = Mp

instance ToTsBridge a => Mapping MappingToTsBridge a (TsBridgeM TsType) where
  mapping _ = toTsBridge

instance ToTsBridge a => ToTsBridge (Proxy a) where
  toTsBridge = defaultProxy Mp

instance (ToTsBridge a, ToTsBridge b) => ToTsBridge (Either a b) where
  toTsBridge = defaultOpaqueType "Data.Either" "Either" [ "A", "B" ]
    [ toTsBridge (Proxy :: _ a), toTsBridge (Proxy :: _ b) ]

instance ToTsBridge Number where
  toTsBridge = defaultNumber