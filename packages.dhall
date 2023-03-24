let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20220901/packages.dhall
        sha256:f1531b29c21ac437ffe5666c1b6cc76f0a9c29d3c9d107ff047aa2567744994f

in  upstream
  with ts-bridge =
    { dependencies =
    [ "aff"
    , "aff-promise"
    , "arrays"
    , "console"
    , "effect"
    , "either"
    , "foldable-traversable"
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
    , "transformers"
    , "tuples"
    , "typelevel"
    , "variant"
    ]
    , repo = "https://github.com/thought2/purescript-ts-bridge.git"
    , version = "77c2df7573af57601a927be1166e83b2ce40c41a"
    }