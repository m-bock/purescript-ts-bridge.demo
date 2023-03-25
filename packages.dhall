let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.7-20230325/packages.dhall
        sha256:98bd559174f64f82966f13583a14b67ab2010e8b1b79ba69f51af457d469d979


in  upstream
  with ts-bridge =
    { dependencies =
    [ "aff"
    , "aff-promise"
    , "arrays"
    , "bifunctors"
    , "console"
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
    , version = "6eeebaa759563bf1a8970842fa4ff97b78e8cd81"
    }