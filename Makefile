build:
	spago build
generate:
	rm -rf output/*/index.d.ts
	spago \
	  run \
	    --main SampleAppTsBridge.Main \
	    --node-args " \
	        --output-dir output \
	        --prettier 'node_modules/prettier/bin-prettier.js' \
	  	    "

run:
	tsc
	node --no-warnings --experimental-specifier-resolution=node dist/index.js