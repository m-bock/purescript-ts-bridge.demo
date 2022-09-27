module SampleTsGen.Main where

import Prelude

import Effect (Effect)
import Effect.Class.Console (log)
import SampleTsGen.TsBridgeModules (myTsProgram)
import TsBridge.Cli (mkTypeGenCli)

main :: Effect Unit
main = do
  log "Generating TS Types..."
  mkTypeGenCli myTsProgram
