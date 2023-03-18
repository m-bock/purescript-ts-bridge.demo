{ name = "ts-type-generation-project"
, dependencies =
    [ "console", "effect", "either", "prelude", "typescript-bridge" ]
, packages = ./packages.dhall
, sources = 
    [ "src/**/*.purs"
    , "test/**/*.purs"
    , "src-tsbridge/**/*.purs"
    ]
}
