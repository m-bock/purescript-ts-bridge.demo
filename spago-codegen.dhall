{ name = "sample-project"
, dependencies =  (./spago.dhall).dependencies
, packages = ./packages.dhall
, sources = [ "src/TsCodeGen/Main.purs" ]
}
