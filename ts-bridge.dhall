{ name = "ts-type-generation-project"
, dependencies =
    (./spago.dhall).dependencies #
    [ "console"
    , "effect"
    , "either"
    , "prelude"
    , "typescript-bridge"
    , "maybe"
    , "newtype"
    , "nullable"
    ]
, packages = ./packages.dhall
, sources = 
    [ "src/**/*.purs"
    , "src-tsbridge/**/*.purs"
    ]
}
