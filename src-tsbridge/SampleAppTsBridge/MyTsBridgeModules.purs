module SampleAppTsBridge.MyTsBridgeModules where

import SampleApp.App as Auto.SampleApp.App
import SampleApp.Lib as Auto.SampleApp.Lib
import SampleAppTsBridge.MyTsBridgeClass (MappingToTsBridge(..))
import Prelude
import TsBridge (TsProgram, mergeTsPrograms, mkTypeGenCli, tsModuleFile, tsOpaqueType, tsProgram, tsTypeAlias, tsUnsupported)
import Type.Proxy (Proxy(..))

myTsProgram :: TsProgram
myTsProgram = 
  tsProgram
    [ tsModuleFile "SampleApp.Types/index"
        [ -- tsTypeAlias "Bar" (Proxy :: _ (AppState))
        ]
    ]

