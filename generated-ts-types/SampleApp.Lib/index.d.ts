import * as Data_Maybe from "~/Data.Maybe/index";
import * as SampleApp_Lib from "~/SampleApp.Lib/index";

export const bla: null | string;

export const foo: (_: number) => string;

export const user1: {
  readonly address: Data_Maybe.Maybe<string>;
  readonly age: number;
  readonly hobbies: Array<string>;
  readonly name: string;
};

export const user2: SampleApp_Lib.User_;

export const val1: number;

export const val2: number;

export type User_ = { readonly brand: unique symbol } & {
  readonly address: Data_Maybe.Maybe<string>;
  readonly age: number;
  readonly hobbies: Array<string>;
  readonly name: string;
};
