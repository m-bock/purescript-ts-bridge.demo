{ name = "ts-bridge-demo-project"
, dependencies =
  [ "aff-promise"
  , "console"
  , "effect"
  , "either"
  , "integers"
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
