'use strict';

// Data needed for a later exercise
const flights =
  '_Delayed_Departure;fao93766109;txl2133758440;11:25+_Arrival;bru0943384722;fao93766109;11:45+_Delayed_Arrival;hel7439299980;fao93766109;12:05+_Departure;fao93766109;lis2323639855;12:30';

console.log(flights.split('+'));

const getCode = str => str.slice(0, 3).toUpperCase();

for (const flight of flights.split('+')) {
  const [type, from, to, time] = flight.split(';');

  const output = `${type.startsWith('_Delayed') ? '❌' : ''}${type.replaceAll(
    '_',
    ' '
  )} from ${getCode(from)} to ${getCode(to)} (${time.replace(
    ':',
    'h'
  )})`.padStart(45);
  console.log(output);
}

// const weekdays = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'];

// const openingHours = {
//   [weekdays[3]]: {
//     open: 12,
//     close: 22,
//   },
//   [weekdays[4]]: {
//     open: 11,
//     close: 23,
//   },
//   [weekdays[5]]: {
//     open: 0, // Open 24 hours
//     close: 24,
//   },
// };

// // Data needed for first part of the section
// const restaurant = {
//   name: 'Classico Italiano',
//   location: 'Via Angelo Tavanti 23, Firenze, Italy',
//   categories: ['Italian', 'Pizzeria', 'Vegetarian', 'Organic'],
//   starterMenu: ['Focaccia', 'Bruschetta', 'Garlic Bread', 'Caprese Salad'],
//   mainMenu: ['Pizza', 'Pasta', 'Risotto'],

//   //ES enhanced object literals
//   openingHours,

//   order(starterIndex, mainIndex) {
//     return [this.starterMenu[starterIndex], this.mainMenu[mainIndex]];
//   },

//   orderDelivery({ starterIndex, mainIndex, time, address }) {
//     console.log(
//       `Order received! ${this.starterMenu[starterIndex]} and ${this.mainMenu[mainIndex]} will be delivered to ${address} at ${time}`
//     );
//   },

//   orderPasta: function (ing1, ing2, ing3) {
//     console.log(
//       `Here is your delicious pasta with ${ing1}, ${ing2} and ${ing3}`
//     );
//   },

//   orderPizza: function (mainIngredient, ...otherIngredients) {
//     console.log(mainIngredient);
//     console.log(otherIngredients);
//   },
// };

// // Split method
// console.log('a+very+nice+strring'.split('+'));
// console.log('Alan Santos'.split(' '));

// const [firstName, lastName] = 'Alan Santos'.split(' ');
// console.log(firstName, lastName);

// // Join method
// const newName = ['Mr.', firstName, lastName.toUpperCase()].join(' ');
// console.log(newName);
// console.log('----------Capitalized a name----------');
// // Capitalized a name
// const capitalizeName = function (name) {
//   const names = name.split(' ');
//   const namesUpper = [];

//   for (const n of names) {
//     // namesUpper.push(n[0].toUpperCase() + n.slice(1));
//     // outra maneira de deixar as primeiras letras maiscúlas
//     namesUpper.push(n.replace(n[0], n[0].toUpperCase()));
//   }
//   console.log(namesUpper.join(' '));
// };

// capitalizeName('Jessica ann smith davis');
// capitalizeName('alan santos');

// // Padding a String
// const message = 'Go to gate 23!';
// console.log(message.padStart(20, '+').padEnd(30, '+'));
// console.log(message.padStart(20, '+').padEnd(30, '+'));

// // masking
// const maskCreditCard = function (number) {
//   const str = number + '';
//   const last = str.slice(-4);
//   return last.padStart(str.length, '*');
// };

// console.log(maskCreditCard(43133177722));

// // Repeat Method - Repeat the same String multiple times
// const message2 = 'Bad weather... All departues delayed...';
// console.log(message2.repeat(5));

// const planesInLine = function (n) {
//   console.log(`There are ${n} planes in line ${'✈'.repeat(n)}`);
// }
// planesInLine(5);
// planesInLine(3);

//
// const airline = 'TAP Air Portugal';

// // Change the case of a String
// console.log(airline.toLowerCase());
// console.log(airline.toLocaleUpperCase());

// // to Fix the capitalization in name
// const passanger = 'jOnAs'; // Jonas
// const passangerLower = passanger.toLocaleLowerCase();
// const passangerCorrect =
//   passangerLower[0].toLocaleUpperCase() + passangerLower.slice(1);
// console.log(passangerCorrect);

// // Comparing email
// const email = 'hello@jonas.io';
// const loginEmail = ' Hello@Jonas.Io \n';

// // const lowerEmail = loginEmail.toLocaleLowerCase();
// // const trimmedEmail = lowerEmail.trim();

// const normalizedEmail = loginEmail.toLowerCase().trim();
// console.log(normalizedEmail);
// console.log(email === normalizedEmail);

// // Replacing parts of Strings
// const priceGB = '288,97R$';
// const priceUS = priceGB.replace('R$', '$').replace(',', '.');
// console.log(priceUS);

// const annoucement = 'All passengers come to boarding door 23. Boarding door 23!';

// console.log(annoucement.replace('door', 'gate'));
// console.log(annoucement.replaceAll('door', 'gate'));
// // regular expressions
// console.log(annoucement.replace(/door/g, 'gate')); //g stands for Global

// // Booleans
// const plane = 'Airbus A320neo';
// console.log(plane.includes('A320'));
// console.log(plane.includes('Boeing'));
// console.log(plane.startsWith('Air'));

// if (plane.startsWith('Airbus') && plane.endsWith('neo')) {
//   console.log('Part of the NEW Airbus family');
// }

// // Practice exercise
// const checkBaggage = function(items) {
//   const baggage = items.toLowerCase();
//   if(baggage.includes('knife') || baggage.includes('gun')) {
//     console.log('You are NOT allowed on board');
//   } else {
//     console.log('Welcome aboard!');
//   }
// };
// checkBaggage('I have a laptop, some Food and a pocket Knife');
// checkBaggage('Socks and camera')
// checkBaggage('Got some snacks and a gun for protection')

// const airline = 'TAP Air Portugal';
// const plane = 'A320';

// console.log(plane[0]);
// console.log(plane[1]);
// console.log(plane[2]);

// console.log(airline.length);
// console.log('B737'.length);

// console.log(airline.indexOf('r'));
// console.log(airline.lastIndexOf('r'));
// console.log(airline.indexOf('Portugal'));

// console.log(airline.slice(4));
// console.log(airline.slice(4, 7));

// console.log(airline.slice(0, airline.indexOf(' ')));
// console.log(airline.slice(airline.lastIndexOf(' ') + 1));

// console.log(airline.slice(-2));
// console.log(airline.slice(1, -1));

// const checkMiddleSeat = function (seat) {
//   // B and E are middle seats
//   const s = seat.slice(-1);
//   if (s === 'B' || s === 'E') console.log('You got the middle seat');
//   else console.log('You got lucky');
// };

// checkMiddleSeat('11B');
// checkMiddleSeat('23C');
// checkMiddleSeat('3E');

// const question = new Map([
//   ['question', 'What is the best programming language in the world?'],
//   [1, 'C'],
//   [2, 'Java'],
//   [3, 'JavaScript'],
//   ['correct', 3],
//   [true, 'Correct :D'],
//   [false, 'Try again!'],
// ]);
// console.log(question);

// // Convert Object to Map
// console.log(Object.entries(openingHours));
// const hoursMap = new Map(Object.entries.openingHours);
// console.log(hoursMap);

// // Iteration
// // Quiz app
// console.log(question.get('question'));
// for (const [key, value] of question) {
//   if (typeof key === 'number') console.log(`Answer ${key} : ${value}`);
// }
// const answer = Number(prompt('Your answer'));
// console.log(answer);

// console.log(question.get(answer === question.get('correct')))

// // Convert Map to Array
// console.log([...question]);

// // Methods
// console.log([...question.entries()]);
// console.log([...question.keys()]);
// console.log([...question.values()]);

// // // Create a Map
// // const rest = new Map();
// // // fill up the map
// // rest.set('name', 'Classico Italiano');
// // rest.set(1, 'Firenze, Italy');
// // console.log(rest.set(2, 'Lisbon, Portugal'));

// // rest
// //   .set('categories', ['Italian', 'Pizzeria', 'Vegetarian', 'Organic'])
// //   .set('open', 11)
// //   .set('close', 23)
// //   .set(true, 'We are open :D')
// //   .set(false, 'We are closed :(');

// // console.log(rest.get('name'));
// // console.log(rest.get(true));
// // console.log(rest.get(1));

// // const time = 21;
// // console.log(rest.get(time > rest.get('open') && time < rest.get('close')));

// // console.log(rest.has('categories'));
// // rest.delete(2)
// // // rest.clear();
// // // Arrays or objects as map's keys

// // const arr =[1,2]
// // rest.set(arr, 'Test')
// // rest.set(document.querySelector('h1'), 'Heading')
// // console.log(rest);
// // console.log(rest.size);

// // console.log(rest.get(arr))

// // // Sets
// // const ordersSet = new Set([
// //   'Pasta',
// //   'Pizza',
// //   'Pizza',
// //   'Risotto',
// //   'Pasta',
// //   'Pizza',
// // ]);
// // console.log(ordersSet);

// // console.log(new Set('Jonas'));

// // console.log(ordersSet.size);
// // console.log(ordersSet.has('Pizza'));
// // console.log(ordersSet.has('Bread'));
// // ordersSet.add('Garlic Bread');
// // ordersSet.add('Garlic Bread');
// // ordersSet.delete('Risotto');
// // // ordersSet.clear();
// // console.log(ordersSet);

// // // Sets are also iterable
// // for (const order of ordersSet) console.log(order);

// // // Example
// // const staff = ['Waiter', 'Chef', 'Waiter', 'Manager', 'Chef', 'Waiter'];
// // const staffUnique = [...new Set(staff)];
// // console.log(staffUnique);
// // console.log(
// //   new Set(['Waiter', 'Chef', 'Waiter', 'Manager', 'Chef', 'Waiter']).size
// // );

// // //How many different latters are in the string

// // console.log(new Set('alansilvadossantos').size);

// // // Keys
// // const properties = Object.keys(openingHours);

// // let openStr = `We are open on ${properties.length} days: `;
// // for (const day of properties) {
// //   openStr += `${day}, `;
// // }
// // console.log(openStr);

// // // Property VALUES
// // const values = Object.values(openingHours);
// // console.log(values);

// // // Entries object - gets prorpeties (keys) and prorpeties' values
// // const entries = Object.entries(openingHours);

// // // [key, value] <- destructuring
// // for (const [key, {open, close}] of entries) {
// //   console.log(`On ${key} we open at ${open} and close at ${close}`)
// // }

// // if (restaurant.openingHours && restaurant.openingHours.mon)
// //   console.log(restaurant.openingHours.mon.open);

// // // WITH optional chaining
// // console.log(restaurant.openingHours.mon?.open);
// // console.log(restaurant.openingHours?.mon?.open);

// // // Example
// // const days = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'];
// // for (const day of days) {
// //   const open = restaurant.openingHours[day]?.open ?? 'closed';
// //   console.log(`On ${day}, we open at ${open}`);
// // }

// // // Methods
// // console.log(restaurant.order?.(0, 1) ?? 'Method does not exist');
// // console.log(restaurant.orderRisotto?.(0, 1) ?? 'Method does not exist');

// // // Arrays
// // const users = [{ name: 'Jonas', email: 'hello@g...' }];
// // console.log(users[0]?.name ?? `User array empty`);

// // const menu = [...restaurant.starterMenu, ...restaurant.mainMenu];

// // for (const item of menu) console.log(item);

// // for (const [i, el] of menu.entries()) {
// //   console.log(`${i + 1}: ${el}`);
// // }

// // console.log([...menu.entries()]);

// // const rest1 = {
// //   name: 'Capri',
// //   numGuests: 0,
// // };

// // const rest2 = {
// //   name: 'La Piazza',
// //   owner: 'Giovanni Rossi',
// // };

// // rest1.numGuests = rest1.numGuests || 10;
// // rest2.numGuests = rest2.numGuests || 10;

// // OR assignment operator
// // rest1.numGuests ||= 10;
// // rest2.numGuests ||= 10;

// // // Nullish assignment operator (null or undefined)
// // rest1.numGuests ??= 10;
// // rest2.numGuests ??= 10;

// // // rest1.owner = rest1.owner && '<ANONYMOUS>';
// // // rest2.owner = rest2.owner && '<ANONYMOUS>';
// // rest1.owner &&= '<ANONYMOUS>';
// // rest2.owner &&= '<ANONYMOUS>';

// // console.log(rest1);
// // console.log(rest2);
// // console.log(rest1.numGuests);
// // console.log(rest2.numGuests);

// // restaurant.numGuests = 0;
// // const guests2 = restaurant.numGuests || 10;
// // console.log(guests2);

// // // Nullish: null and undefined (NOT 0 or '')
// // const guestCorrect = restaurant.numGuests ?? 10;
// // console.log(guestCorrect);

// // console.log('----------- OR -----------');
// // // Use ANY data type, return ANY data type, short-circuiting
// // console.log(3 || 'Jonas');
// // console.log('' || 'Jonas');
// // console.log(true || 0);
// // console.log(undefined || null);

// // console.log(undefined || 0 || '' || 'Hello' || 23 || null);

// // const guests1 = restaurant.numGuests ? restaurant.numGuests : 10;
// // console.log(guests1);

// // console.log('----------- AND -----------');
// // console.log(0 && 'Jonas');
// // console.log(7 && 'Jonas');
// // console.log(7 && '');

// // // Practical example
// // if (restaurant.orderPizza) {
// //   restaurant.orderPizza('mushrooms', 'spinach');
// // }

// // restaurant.orderPizza && restaurant.orderPizza('mushrooms', 'spinach');

// // // 1) Destructuring
// // // SPREAD, because on right side of =
// // const arr = [1, 2, ...[3, 4]];

// // // REST, because on left side of =
// // const [a, b, ...others] = [1, 2, 3, 4, 5];
// // console.log(a, b, others);

// // const [pizza, , risotto, ...otherFood] = [
// //   ...restaurant.mainMenu,
// //   ...restaurant.starterMenu,
// // ];
// // console.log(pizza, risotto, otherFood);

// // // Objects
// // const { sat, ...weekdays } = restaurant.openingHours;
// // console.log(weekdays);

// // // 2) Functions
// // const add = function (...numbers) {
// //   let sum = 0;
// //   for (let number of numbers) {
// //     sum += number;
// //   }
// //   return sum;
// // };
// // console.log(add(2, 3));
// // console.log(add(5, 3, 7, 2));
// // console.log(add(8, 2, 5, 3, 2, 1, 4));

// // const x = [23, 5, 7];

// // console.log(add(...x));

// // restaurant.orderPizza('mushrooms', 'onion', 'olives');
// // restaurant.orderPizza('mushrooms');

// // real-world example
// // const ingredients = [
// //   prompt("Let's make pasta! Ingredient 1?"),
// //   prompt('Ingredient 2?'),
// //   prompt('Ingredient 3?'),
// // ];
// // console.log(ingredients);

// // restaurant.orderPasta(ingredients[0], ingredients[1], ingredients[2]);

// // restaurant.orderPasta(...ingredients);

// // // Objects
// // const newRestaurant = { foundedIn: 1998, ...restaurant, founder: 'Guiseppe' };
// // console.log(newRestaurant);

// // const restaurantCopy = { ...restaurant };
// // restaurantCopy.name = 'Ristorante Roma';
// // console.log(restaurantCopy.name);
// // console.log(restaurant.name);

// // //

// // const arr = [7, 8, 9];
// // const badNewArr = [1, 2, arr[0], arr[1], arr[2]];
// // console.log(badNewArr);

// // const newArr = [1, 2, ...arr];
// // console.log(newArr);

// // const newMenu = [...restaurant.mainMenu, 'Gnocci'];
// // console.log(newMenu);

// // // Copy array
// // const mainMenuCopy = [...restaurant.mainMenu];

// // // Join 2 arrays
// // const mergeArray = [...restaurant.mainMenu, ...restaurant.starterMenu];
// // console.log(mergeArray);

// // // Iterables: arrays, strings, maps, sets. NOT objects
// // const str = 'Jonas';
// // const letters = [...str, ' ', 'S.'];
// // console.log(letters);
// // console.log(...str);

// // // Destructuring Objects
// // restaurant.orderDelivery({
// //   time: '22:30',
// //   address: 'Via del Sole, 21',
// //   mainIndex: 2,
// //   starterIndex: 2,
// // });

// // const { name, openingHours, categories } = restaurant;
// // console.log(name, openingHours, categories);

// // const {
// //   name: restaurantName,
// //   openingHours: hours,
// //   categories: tags,
// // } = restaurant;
// // console.log(restaurantName, hours, tags);

// // // Default values
// // const { menu = [], starterMenu: starters = [] } = restaurant;
// // console.log(menu, starters);

// // // Mutating variables
// // let a = 111,
// //   b = 999;
// // const obj = { a: 11, b: 12, c: 14 };
// // ({ a, b } = obj);
// // console.log(a, b);

// // // Nested objects
// // const {
// //   fri: { open: o, close: c },
// // } = openingHours;
// // console.log(o, c);

// // const arr = [2, 3, 4];
// // const a = arr[0];
// // const b = arr[1];
// // const c = arr[2];

// // const [x, y, z] = arr;
// // console.log(x, y, z);

// // let [main, , secundary] = restaurant.categories;
// // console.log(main, secundary);
// // [main, secundary] = [secundary, main];
// // console.log(main, secundary);

// // console.log(restaurant.order(2, 0));

// // // Receive 2 return values from a function
// // const [starter, mainCourse] = restaurant.order(2, 0);
// // console.log(starter, mainCourse);

// // // Nested destructuring
// // const nested = [2, 4, [5, 6]];
// // const [i, , [j, k]] = nested;
// // console.log(j, k);

// // // Default values
// // const [r = 1, s = 1, t=1] = [8, 9];
// // console.log(r, s, t);
