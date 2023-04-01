# Sample Project for `purescript-ts-bridge`

See [purescript-ts-bridge](https://github.com/thought2/purescript-ts-bridge) for further documentation.


## Instructions

- Clone this repo

- Install the latest version of spago and purescript:
  
  `npm install -g spago purescript` 
  
  or run
  
  `nix develop` to setup the environment with Nix.

- run `yarn install` (only to install prettier locally)

- run `make build` to build the sample app.

- run `make generate` to generate TypeScript types for the sample app into the `output` folder.

- run `make run` to run the small sample TypeScript file located at `usage/index.ts` which imports some parts of the compiled sample app.