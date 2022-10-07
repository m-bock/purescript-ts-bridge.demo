module MyTsBridgeModules where

{-GEN:imports
{}
-}

import SampleApp.App as Auto.SampleApp.App
import SampleApp.Lib as Auto.SampleApp.Lib
import Effect (Effect)
import MyTsBridgeClass (MappingToTsBridge(..))
import Prelude
import TsBridge (TsProgram, mergeTsPrograms, mkTypeGenCli, tsModuleFile, tsOpaqueType, tsProgram, tsTypeAlias, tsUnsupported)
import Type.Proxy (Proxy(..))

{-GEN:END-}

finalTsProgram :: TsProgram
finalTsProgram = generatedTsProgram `mergeTsPrograms` additionalTsProgram

additionalTsProgram :: TsProgram
additionalTsProgram =
  tsProgram
    [ tsModuleFile "SampleApp.Types/index"
        [ -- tsTypeAlias "Bar" (Proxy :: _ (AppState))
        ]

    ]

{-GEN:ts-program
{ "include": ["SampleApp/**", "Main"], "exclude": [] }
-}

generatedTsProgram :: TsProgram
generatedTsProgram = tsProgram
  [ tsModuleFile "SampleApp.App/index" [ tsUnsupported "My" "type alias" ]
  , tsModuleFile "SampleApp.Lib/index"
      [ tsOpaqueType Mp "AppState" (Proxy :: _ Auto.SampleApp.Lib.AppState) ]
  ]

{-GEN:END-}

main :: Effect Unit
main = mkTypeGenCli finalTsProgram