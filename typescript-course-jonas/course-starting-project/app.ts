// const person: {
//   name: string;
//   age: number;
//   hobbies: string[];
//   role: [number, string];
// } = {
//   name: "alan",
//   age: 26,
//   hobbies: ["Sports", "Cooking"],
//   role: [0, 'author']
// };

enum Role { ADMIN, READ_ONLY, AUTHOR};

const person = {
  name: "alan",
  age: 26,
  hobbies: ["Sports", "Cooking"],
  role: Role.ADMIN,
};

if (person.role === Role.ADMIN) console.log('is author');


//person.role.push('admin') // not allow with Tuples
// person.role = [0, 'admin']

let favoriteActivities: string[];

console.log(person.name);
