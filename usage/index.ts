import * as Lib from "../output/SampleApp.Lib";
import * as Int from "../output/Data.Int";

// const y = Lib.x;

// const y2 = Lib.user1.address;

// const y3 = Lib.user2.address;

// const f = (): number => {
//   switch (Lib.x.type) {
//     case "bar":
//       return Lib.x.value;
//     case "baz":
//       return 0.0;
//   }
// };

const user: Lib.User_ = Lib.mkUser_({
  name: "",
  age: Int.round(12),
  hobbies: [],
  address: null,
});


export const main = () => {
    console.log("Hello!")
    console.log(Lib.user1)
}



main()