build:
	spago build
	spago build --config ts-bridge.dhall

generate:
	rm -rf generated-ts-types/*
	spago run \
	  --main SampleAppTsBridge.Main \
	  --node-args " \
	      --output-dir generated-ts-types \
	      --prettier 'node_modules/prettier/bin-prettier.js' \
		  "