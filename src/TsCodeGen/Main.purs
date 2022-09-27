module TsCodeGen.Main where

import Prelude

import Data.Array as A
import Data.Tuple.Nested ((/\))
import Effect (Effect)
import Effect.Aff.Class (liftAff)
import Node.Encoding (Encoding(..))
import Node.FS.Aff (readTextFile, writeTextFile)
import TsBridgeGen (replaceComment, runImportWriterM, TsBridgeGenM, genInstances, getPursModules, getSpagoGlobs, runTsBridgeGenM)

filePath :: String
filePath = "src/TsCodeGen/Gen.purs"

app :: TsBridgeGenM Unit
app = do
  globs <- getSpagoGlobs
  defs <- getPursModules globs

  let
    sections /\ imports = runImportWriterM do
      instances <- defs
        # A.filter (\_ -> true)
        # genInstances

      pure { instances }

    sections' /\ imports' = runImportWriterM $ sequenceRecord
      { instances: defs
          # A.filter (\_ -> true)
          # genInstances
      }

  file <- liftAff $ readTextFile UTF8 filePath

  let
    file' = file
      # replaceComment "imports" imports
      # replaceComment "instances" sections.instances

  liftAff $ writeTextFile UTF8 filePath file'

main :: Effect Unit
main = runTsBridgeGenM app
