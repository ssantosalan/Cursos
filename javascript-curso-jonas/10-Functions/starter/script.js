'use strict';

// const oneWord = function (str) {
//   return str.replaceAll(' ', '').toLowerCase();
// };

// const upperFirstWord = function (str) {
//   const [first, ...others] = str.split(' ');
//   return [first.toUpperCase(), ...others].join(' ');
// };

// // Higher-order function
// const transformer = function (str, fn) {
//   console.log(`Original string: ${str}`);
//   console.log(`Transformed string: ${fn(str)}`);
//   console.log(`Transformed by: ${fn.name}`);
// };

// transformer(`JavaScript is the best`, upperFirstWord);
// transformer(`JavaScript is the best`, oneWord);

// //JS uses callbacks all the time
// const high5 = function () {
//   console.log('👋');
// }

// document.body.addEventListener('click', high5);
// ['Jonas', 'Marth', 'Alan'].forEach(high5)

// const bookings = [];

// const createBooking = function (
//   flightNum,
//   numPassangers = 1,
//   price = 199 * numPassangers
// ) {
//   const booking = {
//     flightNum,
//     numPassangers,
//     price,
//   };
//   console.log(booking);
//   bookings.push(booking);
// };

// createBooking('LH123');
// createBooking('LH123', 2, 800);
// createBooking('LH123', 2);
// //leave at default a parameter
// createBooking('LH123', undefined, 2);

// const flight = 'LH234';
// const jonas = {
//   name: 'Alan Santos',
//   passport: 2346532,
// };

// const checkIn = function (flightNum, passenger) {
//   flightNum = 'LH333';
//   passenger.name = 'Mr. ' + passenger.name;

//   if (passenger.passport === 2346532) {
//     alert('Check in');
//   } else {
//     alert('Wrong passport');
//   }
// };

// checkIn(flight, jonas);
// console.log(flight);
// console.log(jonas);

// const newPassport = function (person) {
//   person.passport = Math.trunc(Math.random()) * 100000;
// };

// newPassport(jonas);
// checkIn(flight, jonas);

// const greet = function (greeting) {
//   return function (name) {
//     console.log(`${greeting}, ${name}!`);
//   };
// };

// const greeterHey = greet(`Hey`);

// greeterHey(`Alan`);

// greet('Hello')('Alan');

//Arrow function
// const greet = greeting => name => console.log(`${greeting}, ${name}!`);

// const greeterHi = greet(`Hi`);
// greeterHi(`Orlando`)

const lufthansa = {
  airline: 'Lufthansa',
  iataCode: 'LH',
  booking: [],

  book(flighNum, name) {
    console.log(
      `${name} booked a seat on ${this.airline} flight ${this.iataCode}${flighNum}`
    );
    this.booking.push({
      flight: `${this.iataCode}${flighNum}`,
      name,
    });
  },
};

lufthansa.book(239, 'Alan Santos');
console.log(lufthansa.booking);

const eurowings = {
  airline: 'Eurowings',
  iataCode: 'EW',
  booking: [],
};

const book = lufthansa.book;
// Does NOT wok
// book(23, 'Sarah');

book.call(eurowings, 23, 'Sarah');

const swiss = {
  airline: 'Swiss',
  iataCode: 'LH',
  booking: [],
};

// Apply method isn't used on modern javascript anymore
const flightData = [555, 'George C'];
book.apply = (swiss, flightData);
console.log(swiss);
// How we do now:
book.call(swiss, ...flightData);

// Bind Method
const bookEW = book.bind(eurowings);
bookEW(23, 'Steven W');

const bookEW23 = book.bind(eurowings, 23);
bookEW23('Alanx');

// With Event Listeners
lufthansa.planes = 300;
lufthansa.buyPlane = function () {
  console.log(this);

  this.planes++;
  console.log(this.planes);
};
// lufthansa.buyPlane();
console.log(lufthansa);
document
  .querySelector('.buy')
  .addEventListener('click', lufthansa.buyPlane.bind(lufthansa));

// Partial application
const addTax = (rate, value) => value + value * rate;
console.log(addTax(0.1, 200));

const addVAT = addTax.bind(null, 0.23);
// addVAT = value => value + value * 0.23;

console.log(addVAT(100));

// Rewrite: one function return another function.
const addTaxRate = function (rate) {
  return function (value) {
    return value + value * rate;
  };
};

const addVAT2 = addTaxRate(0.23);
console.log(addVAT2(100));
