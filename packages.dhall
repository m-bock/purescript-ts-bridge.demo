let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20220901/packages.dhall
        sha256:f1531b29c21ac437ffe5666c1b6cc76f0a9c29d3c9d107ff047aa2567744994f

in  upstream
  with typescript-bridge =
    { dependencies =
    [ "aff"
    , "aff-promise"
    , "arrays"
    , "console"
    , "dodo-printer"
    , "effect"
    , "either"
    , "foldable-traversable"
    , "foreign-object"
    , "language-cst-parser"
    , "maybe"
    , "newtype"
    , "node-buffer"
    , "node-child-process"
    , "node-fs"
    , "node-fs-aff"
    , "node-path"
    , "optparse"
    , "ordered-collections"
    , "ordered-set"
    , "prelude"
    , "record"
    , "safe-coerce"
    , "spec"
    , "spec-discovery"
    , "strings"
    , "sunde"
    , "tidy"
    , "transformers"
    , "tuples"
    , "typelevel"
    ]
    , repo = "https://github.com/thought2/purescript-typescript-bridge.git"
    , version = "c1de7469b86b50e41f8b38f46e981f68f2a96546"
    }
  
  with tidy =
    { dependencies =
      [ "arrays"
      , "control"
      , "dodo-printer"
      , "either"
      , "foldable-traversable"
      , "lists"
      , "maybe"
      , "newtype"
      , "ordered-collections"
      , "partial"
      , "prelude"
      , "language-cst-parser"
      , "strings"
      , "tuples"
      ]
    , repo = "https://github.com/natefaubion/purescript-tidy.git"
    , version = "fa1c7c7b251341f3a22ca4e402f46614486878db"
    }