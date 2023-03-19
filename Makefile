build:
	spago build
	spago build --config ts-bridge.dhall

generate:
	rm -rf output/*/index.d.ts
	spago \
	  --config ts-bridge.dhall \
	  run \
	    --main SampleAppTsBridge.Main \
	    --node-args " \
	        --output-dir output \
	        --prettier 'node_modules/prettier/bin-prettier.js' \
	  	    "

run:
	tsc
	node --no-warnings --experimental-specifier-resolution=node dist/index.js