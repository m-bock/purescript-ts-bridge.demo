{ name = "sample-project-ts-gen"
, dependencies =
      [ "ansi"
      , "argonaut-codecs"
      , "argonaut-traversals"
      , "arraybuffer-types"
      , "datetime"
      , "dodo-printer"
      , "exitcodes"
      , "foreign"
      , "integers"
      , "language-cst-parser"
      , "node-fs"
      , "node-process"
      , "node-streams"
      , "numbers"
      , "optparse"
      , "posix-types"
      , "ps-cst"
      , "quickcheck"
      , "spec"
      , "typelevel"
      ]
    # (./spago.dhall).dependencies
, packages = ./packages.dhall
, sources = [ "src-ts-gen/**/*.purs" ] # (./spago.dhall).sources
}
