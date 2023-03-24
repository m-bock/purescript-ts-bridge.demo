module SampleApp.TsBridge.Main where

import Prelude

import Effect (Effect)
import SampleApp.TsBridge.Modules (myTsProgram)
import TsBridge as TsBridge

main :: Effect Unit
main = TsBridge.mkTypeGenCli myTsProgram