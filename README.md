# Sample Project for `purescript-typescript-bridge`

## Instructions

- `git checkout https://github.com/thought2/purescript-typescript-bridge.sample-project.git`

- `spago build` to build the sample app. It contains only a couple of PureScript types and values for demonstration purpose.

Inside the `ts-bridge` folder you'll find and additional spago project that is responsible for the type generation.

Note: Type Generation is not 100% automatic. You'll have to list all the types and values that you like to generate types for in the `MyTsBridgeModules` module.
`ts-bridge` is a type class based type generator. However, it does not provide a typeclass. You'll need to define to typeclass on your side for the benefit that you can easily define instances for your app types. The definition of such a type class on the user side is inside `MyTsBridgeClass`

- run `make generate` to generate TypeScript types for the sample app.