module SampleAppTsBridge.MyTsBridgeModules where

import Prelude

import Data.Maybe as Data.Maybe
import SampleApp.App as SampleApp.App
import SampleApp.Lib as SampleApp.Lib
import TsBridge (TsProgram, Var, mkTypeGenCli, tsModuleFile, tsProgram, tsValue)
import Type.Proxy (Proxy(..))

myTsProgram :: TsProgram
myTsProgram =
  tsProgram
    [ SampleApp.Lib.tsModules

    --     tsModuleFile "SampleApp.Lib/index"
    --     [ tsValue Tok "val1" SampleApp.Lib.val1
    --     , tsValue Tok "val2" SampleApp.Lib.val2
    --     , tsValue Tok "user1" SampleApp.Lib.user1
    --     ]
    -- , tsModuleFile "SampData.Maybe2/index"
    --     [ tsTypeAlias Tok "MaybeX" (Proxy :: _ (Data.Maybe.Maybe (Var "A")))
    --     ]
    ]

-- x = {
--   "MyNumber": declTypeAlias (Proxy :: _ SampleApp.Lib.MyNumber),
--   val1: declVal 
-- }

-- y = do
--   alias "MyNumber" (Proxy :: _ SampleApp.Lib.MyNumber) Tok
--   opaque "MuType" (Proxy :: _ SampleApp.Lib.MyNumber) Tok
--   val "user1" SampleApp.Lib.user1 Tok
