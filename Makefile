build:
	spago build

format:
	purs-tidy format-in-place 'src/**/*.purs'

generate-bridge:
	yarn ts-bridge
	cd ts-bridge; spago build --purs-args "--output ../output"

generate-ts:
	rm -rf generated-ts-types/*
	node generate-types.js --output-dir generated-ts-types 

check-ts:
	tsc --skipLibCheck false

generate: generate-bridge generate-ts check-ts