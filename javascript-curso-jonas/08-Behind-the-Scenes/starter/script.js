'use strict';

// function calcAge(birthYear) {
//   const age = 2037 - birthYear;

//   function printAge() {
//     const output = `You re ${age}, born in ${birthYear}`;
//     console.log(output);
//   }
//   printAge();

//   return age;
// }

// const firstName = `Jonas`;
// calcAge(1991);

// console.log(addDecl(2, 3));
// console.log(addExpr(2, 3));
// console.log(addArrow(2, 3));

// // functions
// function addDecl(a, b) {
//   return a + b;
// }

// const addExpr = function (a, b) {
//   return a + b;
// };

// const addArrow = (a, b) => a + b;

//

// let age = 30;
// let oldAge = age;
// age = 31;
// console.log(age);
// console.log(oldAge);

// const me = {
//   names: 'Jonas',
//   age: 30,
// };
// const friend = me;
// friend.age = 27;
// console.log('Friend:', friend);
// console.log('Me', me);

let lastName = 'Williams';
let oldLastName = lastName;
lastName = 'Davis';
console.log(lastName, oldLastName);

const jessica = {
  firstName: 'Jessica',
  lastName: 'Williams',
  age: 27,
};
const marriedJessica = jessica;
marriedJessica.lastName = 'Davis';
console.log('Before marriage:', jessica);
console.log('After marriage:', marriedJessica);

// Copying objects

const jessica2 = {
  firstName: 'Jessica',
  lastName: 'Williams',
  age: 27,
  family: ['Alice,', 'Bob']
};

const jessicaCopy = Object.assign({}, jessica2);
jessicaCopy.lastName = 'Davis';

jessicaCopy.family.push('Mary');
jessicaCopy.family.push('John');

console.log('Before marriage:', jessica2);
console.log('After marriage:', jessicaCopy);
