{ name = "sample-project-bridge-gen"
, dependencies =  ["node-path"] # (./spago.dhall).dependencies
, packages = ./packages.dhall
, sources = [ "src-bridge-gen/**/*.purs" ]
}
