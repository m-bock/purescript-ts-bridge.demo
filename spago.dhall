{ name = "sample-project"
, dependencies =
  [ "aff"
  , "arrays"
  , "console"
  , "effect"
  , "maybe"
  , "node-buffer"
  , "node-child-process"
  , "node-fs-aff"
  , "node-glob-basic"
  , "prelude"
  , "strings"
  , "sunde"
  , "tuples"
  , "typescript-bridge"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
