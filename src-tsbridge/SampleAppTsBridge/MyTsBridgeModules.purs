module SampleAppTsBridge.MyTsBridgeModules where

import SampleApp.App as SampleApp.App
import SampleApp.Lib as SampleApp.Lib
import SampleAppTsBridge.MyTsBridgeClass (MappingToTsBridge(..))
import Prelude
import TsBridge (TsProgram, mergeTsPrograms, mkTypeGenCli, tsModuleFile, tsOpaqueType, tsProgram, tsTypeAlias, tsUnsupported)
import Type.Proxy (Proxy(..))

myTsProgram :: TsProgram
myTsProgram = 
  tsProgram
    [ tsModuleFile "SampleApp.Lib/index"
        [ tsTypeAlias Mp "MyNumber" (Proxy :: _ SampleApp.Lib.MyNumber)
        ]
    ]

