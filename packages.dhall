let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.7-20230330/packages.dhall
        sha256:497a770d7c48c5c2f1f658438043dd151e90890366e98c8aa0375a0be39d5599

in  upstream
  with dts =
    { dependencies =
      [ "arrays"
      , "console"
      , "effect"
      , "maybe"
      , "newtype"
      , "ordered-collections"
      , "ordered-set"
      , "prelude"
      , "tuples"
      ]
    , repo = "https://github.com/thought2/purescript-dts.git"
    , version = "40638030c33c5e73363a5562e5b4abf09e505007"
    }
  with ts-bridge =
    { dependencies =
      [ "aff"
      , "aff-promise"
      , "arrays"
      , "console"
      , "dts"
      , "effect"
      , "either"
      , "foldable-traversable"
      , "maybe"
      , "newtype"
      , "node-buffer"
      , "node-fs"
      , "node-fs-aff"
      , "node-path"
      , "node-process"
      , "nullable"
      , "optparse"
      , "ordered-collections"
      , "ordered-set"
      , "prelude"
      , "record"
      , "safe-coerce"
      , "spec"
      , "spec-discovery"
      , "strings"
      , "transformers"
      , "tuples"
      , "variant"
      ]
    , repo = "https://github.com/thought2/purescript-ts-bridge.git"
    , version = "c64e19b8ef52cfd15f5a21ec1b7a1378ff763dbf"
    }
