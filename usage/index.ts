import * as App from "../output/SampleApp.App";
import * as Lib from "../output/SampleApp.Lib";
import * as Int from "../output/Data.Int";
import * as Prim from "../output/Prim";
import { Maybe } from "../output/Data.Maybe";

App.main();

console.log(Lib.gravity);

console.log(Lib.animals.map((x) => `${x}!`).join(" "));

const address: string = Lib.user.address || "no address";

console.log(address);

Lib.letsPromise().then((x) => console.log(`${x} was promised.`));

const temp: number = Lib.temperature;

console.log(temp);

const result: Prim.Int = Lib.calculate(Int.round(12))(Int.round(12));

console.log(result);

const userNameLemgth: Maybe<number> = Lib.mapMaybe<string, number>(
  (x) => x.length
)(Lib.username);
