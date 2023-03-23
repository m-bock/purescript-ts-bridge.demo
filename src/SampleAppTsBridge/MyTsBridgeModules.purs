module SampleAppTsBridge.MyTsBridgeModules where


import Data.Int as Data.Int
import Data.Nullable as Data.Nullable
import SampleApp.Lib as SampleApp.Lib
import SampleAppTsBridge.MyTsBridgeClass (Tok(..))
import TsBridge (TsProgram, Var, tsModuleFile, tsProgram, tsValues)

myTsProgram :: TsProgram
myTsProgram =
  tsProgram
    [ SampleApp.Lib.tsModules
    , tsModuleFile "Data.Int"
        [ tsValues Tok
            { fromNumber: Data.Int.fromNumber
            , round: Data.Int.round
            }
        ]
    , tsModuleFile "Data.Nullable"
        [ tsValues Tok
            { toNullable: Data.Nullable.toNullable :: _ (Var "A") -> _
            , toMaybe: Data.Nullable.toMaybe :: _ (Var "A") -> _
            }
        ]
    ]