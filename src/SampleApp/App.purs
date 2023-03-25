-- | This is a module in the sample app. It contains two modules mainly to
-- | demonstrate that ts-bridge can deal with different modules.

module SampleApp.App where

import Prelude

import Data.Either (Either)
import Effect (Effect)
import Effect.Class.Console (log)
import SampleApp.Lib as Lib
import SampleApp.TsBridge.Class (Tok(..))
import TsBridge as TSB

moduleName :: String
moduleName = "SampleApp.App"

--------------------------------------------------------------------------------

main :: Effect Unit
main = do
  log "Hello!"
  log case Lib.alien of
    Animal -> "A"
    Human -> "B"
    Alien -> "C"
  pure unit

--------------------------------------------------------------------------------

tsModules :: Either TSB.Error (Array TSB.TsModuleFile)
tsModules =
  TSB.tsModuleFile moduleName
    [ TSB.tsValues Tok
        { main
        }
    ]