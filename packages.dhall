let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.9-20230629/packages.dhall
        sha256:f91d36c7e4793fe4d7e042c57fef362ff3f9e9ba88454cd38686701e30bf545a

in  upstream

with ts-bridge =
  { repo = "https://github.com/thought2/purescript-ts-bridge"
  , dependencies =
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
      , "untagged-union"
      , "variant"
      , "variant-encodings"
      ]
  , version = "3ae1cec840b523f2b3031c6a09b88e2b8a2e37d2"
  }