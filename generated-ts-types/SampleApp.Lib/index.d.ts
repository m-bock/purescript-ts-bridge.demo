import * as Data_Maybe from "~/Data.Maybe/index";

export type MyNumber = number;

export type User = {
  readonly address: Data_Maybe.Maybe<string>;
  readonly age: number;
  readonly hobbies: Array<string>;
  readonly name: string;
};

export const val1: number;

export const val2: number;

export const user1: {
  readonly address: Data_Maybe.Maybe<string>;
  readonly age: number;
  readonly hobbies: Array<string>;
  readonly name: string;
};
