module SampleBridgeGen.Main where

import Prelude

import Data.Array as A
import Data.Tuple.Nested ((/\))
import Effect (Effect)
import Effect.Aff.Class (liftAff)
import Effect.Class.Console (log)
import Node.Encoding (Encoding(..))
import Node.FS.Aff (readTextFile, writeTextFile)
import Node.Path (FilePath)
import Record.Extra (sequenceRecord)
import TsBridgeGen (ModuleName(..), PursModule(..), TsBridgeGenM, genInstances, getPursModules, getSpagoGlobs, replaceComment, runImportWriterM, runTsBridgeGenM)

app :: TsBridgeGenM Unit
app = do
  globs <- getSpagoGlobs
  defs <- getPursModules globs

  updateFile "src-ts-gen/SampleTsGen/TsBridgeClass.purs" $ \file -> do
    let
      sections /\ imports = runImportWriterM $ sequenceRecord
        { instances: defs
            # A.filter (\(PursModule (ModuleName mn) _) -> mn == "SampleApp.Types")
            # genInstances
        }

    file
      # replaceComment "imports" imports
      # replaceComment "instances" sections.instances

  -- updateFile "src-ts-gen/SampleTsGen/TsBridgeModules.purs" $ \file -> do
  --   let
  --     sections /\ imports = runImportWriterM $ sequenceRecord
  --       { tsProgram: defs
  --           # A.filter (\_ -> true)
  --           # genTsProgram
  --       }

  --   file
  --     # replaceComment "imports" imports
  --     # replaceComment "ts-program" sections.tsProgram

main :: Effect Unit
main = do
  log "Generating Bridge..."
  runTsBridgeGenM app

updateFile :: FilePath -> (String -> String) -> TsBridgeGenM Unit
updateFile filePath f = do
  content <- liftAff $ readTextFile UTF8 filePath
  let content' = f content
  liftAff $ writeTextFile UTF8 filePath content'
  log ("Patched GEN-comments in " <> filePath)