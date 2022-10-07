module MyTsBridgeClass where

{-GEN:imports
{}
-}

import Data.Generic.Rep as Auto.Data.Generic.Rep
import Data.Ordering as Auto.Data.Ordering
import SampleApp.Lib as Auto.SampleApp.Lib
import Data.Either (Either)
import TsBridge (class Mapping, TsBridgeM, TsType, defaultOpaqueType, defaultProxy, tsOpaqueType)
import Type.Proxy (Proxy(..))

{-GEN:END-}

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

{-GEN:instances
{ "include": ["**"], "exclude": [] }
-}

-- `NoConstructors` is unsupported: newtype

instance ToTsBridge Auto.Data.Generic.Rep.NoArguments where
  toTsBridge = defaultOpaqueType "Data.Generic.Rep" "NoArguments" [] []

-- `Sum` is unsupported: data type with arguments

-- `Product` is unsupported: data type with arguments

instance ToTsBridge Auto.Data.Ordering.Ordering where
  toTsBridge = defaultOpaqueType "Data.Ordering" "Ordering" [] []

-- `Unit` is unsupported: foreign import

-- `Void` is unsupported: newtype

-- `Proxy` is unsupported: data type with arguments

instance ToTsBridge Auto.SampleApp.Lib.AppState where
  toTsBridge = defaultOpaqueType "SampleApp.Lib" "AppState" [] []

{-GEN:END-}

-- instance ToTsBridge Number where
--   toTsBridge _ = defaultNumber
