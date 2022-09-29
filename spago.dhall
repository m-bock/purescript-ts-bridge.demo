{ name = "sample-project"
, dependencies = [ "prelude", "typescript-bridge" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
