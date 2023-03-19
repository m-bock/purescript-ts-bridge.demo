{ name = "sample-project"
, dependencies =
  [ "integers", "maybe", "newtype", "nullable", "prelude", "variant" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
