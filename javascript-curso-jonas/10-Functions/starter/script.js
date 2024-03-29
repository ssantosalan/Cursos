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
//   numPassengers = 1,
//   price = 199 * numPassengers
// ) {
//   const booking = {
//     flightNum,
//     numPassengers,
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

// const lufthansa = {
//   airline: 'Lufthansa',
//   iataCode: 'LH',
//   booking: [],

//   book(flighNum, name) {
//     console.log(
//       `${name} booked a seat on ${this.airline} flight ${this.iataCode}${flighNum}`
//     );
//     this.booking.push({
//       flight: `${this.iataCode}${flighNum}`,
//       name,
//     });
//   },
// };

// lufthansa.book(239, 'Alan Santos');
// console.log(lufthansa.booking);

// const eurowings = {
//   airline: 'Eurowings',
//   iataCode: 'EW',
//   booking: [],
// };

// const book = lufthansa.book;
// // Does NOT wok
// // book(23, 'Sarah');

// book.call(eurowings, 23, 'Sarah');

// const swiss = {
//   airline: 'Swiss',
//   iataCode: 'LH',
//   booking: [],
// };

// // Apply method isn't used on modern javascript anymore
// const flightData = [555, 'George C'];
// book.apply = (swiss, flightData);
// console.log(swiss);
// // How we do now:
// book.call(swiss, ...flightData);

// // Bind Method
// const bookEW = book.bind(eurowings);
// bookEW(23, 'Steven W');

// const bookEW23 = book.bind(eurowings, 23);
// bookEW23('Alanx');

// // With Event Listeners
// lufthansa.planes = 300;
// lufthansa.buyPlane = function () {
//   console.log(this);

//   this.planes++;
//   console.log(this.planes);
// };
// // lufthansa.buyPlane();
// console.log(lufthansa);
// document
//   .querySelector('.buy')
//   .addEventListener('click', lufthansa.buyPlane.bind(lufthansa));

// // Partial application
// const addTax = (rate, value) => value + value * rate;
// console.log(addTax(0.1, 200));

// const addVAT = addTax.bind(null, 0.23);
// // addVAT = value => value + value * 0.23;

// console.log(addVAT(100));

// // Rewrite: one function return another function.
// const addTaxRate = function (rate) {
//   return function (value) {
//     return value + value * rate;
//   };
// };

// const addVAT2 = addTaxRate(0.23);
// console.log(addVAT2(100));

// Coding Challenge #1

/* Let's build a simple poll app!

A poll has a question, an array of options from which people can choose, and an array with the number of replies for each option. This data is stored in the starter 'poll' object below.

Your tasks:

1. Create a method called 'registerNewAnswer' on the 'poll' object. The
method does 2 things:

1.1. Display a prompt window for the user to input the number of the
selected option. The prompt should look like this:
What is your favourite programming language?

0: JavaScript
1: Python
2: Rust
3: C++
(Write option number)

1.2. Based on the input number, update the 'answers' array property. For
example, if the option is 3, increase the value at position 3 of the array by 1. Make sure to check if the input is a number and if the number makes
sense (e.g. answer 52 wouldn't make sense, right?)

2. Call this method whenever the user clicks the "Answer poll" button.

3. Create a method 'displayResults' which displays the poll results. The
method takes a string as an input (called 'type'), which can be either 'string' or 'array'. If type is 'array', simply display the results array as it is, using console.log(). This should be the default option. If type is 'string', display a string like "Poll results are 13, 2, 4, 1".

4. Run the 'displayResults' method at the end of each
'registerNewAnswer' method call.

5. Bonus: Use the 'displayResults' method to display the 2 arrays in the test data. Use both the 'array' and the 'string' option. Do not put the arrays in the poll object! So what should the this keyword look like in this situation?

The Complete JavaScript Course 21
Test data for bonus:
§ Data 1: [5, 2, 3]
§ Data 2: [1, 5, 3, 9, 6, 1]
Hints: Use many of the tools you learned about in this and the last section 😉
GOOD LUCK 😀 */

/* const poll = {
  question: 'What is your favourite programming language?',
  options: ['0: JavaScript', '1: Python', '2: Rust', '3: C++'],
  // This generates [0, 0, 0, 0]. More in the next section!
  answers: new Array(4).fill(0),

  //Get answer
  registerNewAnswer() {
    const answer = Number(
      window.prompt(
        `${this.question}\n${this.options.join('\n')}\n(Write option number)`
      )
    );

    // Register answer
    typeof answer === 'number' &&
      answer < this.answers.length &&
      this.answers[answer]++;

    this.displayResults();
    this.displayResults('string');
  },
  displayResults(type = 'array') {
    if (type === 'array') {
      console.log(this.answers);
    } else if (type === 'string') {
      console.log(`Poll results are ${this.answers.join(', ')}`);
    }
  },
};

document
  .querySelector('.poll')
  .addEventListener('click', poll.registerNewAnswer.bind(poll));

poll.displayResults.call({ answers: [5, 2, 3] }, 'string');
poll.displayResults.call({ answers: [5, 2, 3] }); */

/* const runOnce = function () {
  console.log(`Running immediately`);
};
runOnce();

//IIFE
(function () {
  console.log(`This will never run again!`);
})();

(() => console.log('This will ALSO never run again!'))(); */
//---------------

// Closures;
/* const secureBooking = function () {
  let passengerCount = 0;
  return function () {
    passengerCount++;
    console.log(`${passengerCount} passengers`);
  };
};

const booker = secureBooking();

booker();
booker();
booker();

console.dir(booker); */

/* // Example 2
const boardPassengers = function (n, wait) {
  const perGroup = n / 3;

  setTimeout(function () {
    console.log(`We are no boardning all ${n} passengers`);
    console.log(`There are 3 groups, each with ${perGroup} passengers`);
  }, wait * 1000);

  console.log(`Will start boarding in ${wait} seconds`);
};

// const perGroup = 1000;
boardPassengers(180, 3); */

// const teste = '';

(function () {
  const header = document.querySelector('h1');
  header.style.color = 'red';
  })();
