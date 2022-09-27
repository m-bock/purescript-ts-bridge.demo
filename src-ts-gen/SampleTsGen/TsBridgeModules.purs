module SampleTsGen.TsBridgeModules where

import SampleApp.Types (AppState)
import TsBridge (TsProgram, tsModuleFile, tsProgram, tsTypeAlias)
import Type.Proxy (Proxy(..))

{-GEN:imports-}

{-GEN:END-}


{-GEN:ts-program-}
myTsProgram :: TsProgram
myTsProgram =
  tsProgram
    [ tsModuleFile "Main/index"
        [
        ]
    , tsModuleFile "Other/index"
        [
        ]
    ]

{-GEN:END-}