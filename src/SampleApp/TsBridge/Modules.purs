module SampleApp.TsBridge.Modules where

import DTS as DTS
import Data.Either (Either)
import Data.Int as Data.Int
import Data.Nullable as Data.Nullable
import SampleApp.App as SampleApp.App
import SampleApp.Lib as SampleApp.Lib
import SampleApp.TsBridge.Class (Tok(..))
import TsBridge as TSB

myTsProgram :: Either TSB.AppError DTS.TsProgram
myTsProgram =
  TSB.tsProgram
    [ SampleApp.Lib.tsModules
    , SampleApp.App.tsModules
    , TSB.tsModuleFile "Data.Int"
        [ TSB.tsValues Tok
            { fromNumber: Data.Int.fromNumber
            , round: Data.Int.round
            }
        ]
    , TSB.tsModuleFile "Data.Nullable"
        [ TSB.tsValues Tok
            { toNullable: Data.Nullable.toNullable :: _ (TSB.TypeVar "A") -> _
            , toMaybe: Data.Nullable.toMaybe :: _ (TSB.TypeVar "A") -> _
            }
        ]
    ]