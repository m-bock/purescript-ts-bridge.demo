build:
	spago build
	spago build --config ts-bridge.dhall

generate:
	rm -rf generated-ts-types/*
	