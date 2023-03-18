module SampleAppTsBridge.MyTsBridgeModules where

import Prelude

import SampleApp.App as SampleApp.App
import SampleApp.Lib as SampleApp.Lib
import SampleAppTsBridge.MyTsBridgeClass (MappingToTsBridge(..))
import TsBridge (TsProgram, mergeTsPrograms, mkTypeGenCli, tsModuleFile, tsOpaqueType, tsProgram, tsTypeAlias, tsUnsupported, tsValue)
import Type.Proxy (Proxy(..))

myTsProgram :: TsProgram
myTsProgram = 
  tsProgram
    [ tsModuleFile "SampleApp.Lib/index"
        [ tsTypeAlias Mp "MyNumber" (Proxy :: _ SampleApp.Lib.MyNumber)
        , tsTypeAlias Mp "User" (Proxy :: _ SampleApp.Lib.User)
        , tsValue Mp "val1" SampleApp.Lib.val1
        , tsValue Mp "val2" SampleApp.Lib.val2
        , tsValue Mp "user1" SampleApp.Lib.user1
        ]
    ]

