{ name = "ts-bridge-demo-project"
, dependencies =
  [ "aff-promise"
  , "console"
  , "dts"
  , "effect"
  , "either"
  , "integers"
  , "labeled-data"
  , "maybe"
  , "newtype"
  , "nullable"
  , "prelude"
  , "ts-bridge"
  , "tuples"
  , "variant"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
