{ name = "sample-project-bridge-gen"
, dependencies =
      [ "node-path"
      , "aff"
      , "arrays"
      , "console"
      , "effect"
      , "node-buffer"
      , "node-fs-aff"
      , "record-extra"
      , "tuples"
      ]
    # (./spago.dhall).dependencies
, packages = ./packages.dhall
, sources = [ "src-bridge-gen/**/*.purs" ]
}
