'use strict';

const oneWord = function (str) {
  return str.replaceAll(' ', '').toLowerCase();
};

const upperFirstWord = function (str) {
  const [first, ...others] = str.split(' ');
  return [first.toUpperCase(), ...others].join(' ');
};

// Higher-order function
const transformer = function (str, fn) {
  console.log(`Original string: ${str}`);
  console.log(`Transformed string: ${fn(str)}`);
  console.log(`Transformed by: ${fn.name}`);
};

transformer(`JavaScript is the best`, upperFirstWord);
transformer(`JavaScript is the best`, oneWord);

//JS uses callbacks all the time
const high5 = function () {
  console.log('👋');
}

document.body.addEventListener('click', high5);
['Jonas', 'Marth', 'Alan'].forEach(high5)

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
