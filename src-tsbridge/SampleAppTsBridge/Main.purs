module SampleAppTsBridge.Main where

import Prelude
import Effect (Effect)
import TsBridge as TsBridge
import SampleAppTsBridge.MyTsBridgeModules as MyTsBridgeModules

main :: Effect Unit
main = TsBridge.mkTypeGenCli MyTsBridgeModules.myTsProgram