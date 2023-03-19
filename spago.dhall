{ name = "sample-project"
, dependencies = [ "maybe", "newtype", "prelude", "nullable" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
