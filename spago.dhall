{ name = "sample-project"
, dependencies =
  [ "console"
  , "effect"
  , "either"
  , "integers"
  , "maybe"
  , "newtype"
  , "nullable"
  , "prelude"
  , "typescript-bridge"
  , "variant"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
