TS_TYPES_OUT := "generated-types"

build:
    spago build

format:
    purs-tidy format-in-place 'src/**/*.purs'

generate-bridge:
    spago \
      --config spago-bridge-gen.dhall \
      run \
      --main "SampleBridgeGen.Main"

generate-ts:
    rm -rf {{TS_TYPES_OUT}}
    spago \
      --config spago-ts-gen.dhall \
      run \
      --main "SampleTsGen.Main" \
      --node-args "--output-dir {{TS_TYPES_OUT}}"