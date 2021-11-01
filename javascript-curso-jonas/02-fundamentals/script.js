/*
// "use strict";

// let hasDriversLicense = false;
// const passTest = true;

// if (passTest) hasDriversLicense = true;
// if (hasDriversLicense) console.log("Passed");

//const interface = "Audio";
//const private = 534;
//const if = 23;     
*/

/*
function logger(){
    console.log("My name is Jonas");
}

// calling / running / invoking function
logger();
logger();
logger();

function fruitProcecssor(apples, oranges) {
    const juice = `Juice with ${apples} apples and ${oranges} oranges.`;
    return juice;
}

const appleJuice = fruitProcecssor(6, 0);
console.log(appleJuice);

const appleOrangeJuice = fruitProcecssor(3,5);
console.log(appleOrangeJuice);
*/

/*
// Function declaration
function calcAge1(birthYeah) {
    return 2037 - birthYeah;
}
const age1 = calcAge1(1991);
console.log(age1);

// Function expression
const calcAge2 = function (birthYeah) {
    return 2037 - birthYeah;
}
const age2 = calcAge1(1991);
console.log(age1, age2);
*/

/*
// Arrow function
const calcAge3 = birthYear => 2037 - birthYear;
const age3 = calcAge3(1991);
console.log(age3);

const yearUntilRetirement = (birthYear, firstName) => {
    const age = 2037 - birthYear;
    const retirement = 65 - age;
    return `${firstName} retires in ${retirement} years.`
    //return retiremenet;
}

console.log(yearUntilRetirement(1996, "Alan"));
console.log(yearUntilRetirement(1991, "Jonas"));



function cutFruitPieces(fruit) {
    return fruit * 4;
}

function fruitProcessor(apples, oranges) {
    const applePieces = cutFruitPieces(apples);
    const orangesPieces = cutFruitPieces(oranges);
    
    const juice = `Juice with ${applePieces} pieces of apples and ${orangesPieces} pieces of oranges.`;
    return juice;
}
console.log(fruitProcessor(2,3));



const calcAge = function (birthYear) {
    return 2037 - birthYear;
}

const yearUntilRetirement = function (birthYear, firstName) {
    const age = calcAge(birthYear);
    const retirement = 65 - age;

    if(retirement > 0) {
        console.log(`${firstName} retires in ${retirement} years.`);
        return retirement;
    } else {
        console.log(`${firstName} has already retired`)
        return -1;
    }
}
console.log(yearUntilRetirement(1996, "Alan"));
console.log(yearUntilRetirement(1950, "Mike"));

*/

//Coding Challenge #1

const calcAverage = (score01, score02, score03) => {
  return (score01 + score02 + score03) / 3;
};

const avgDolphins01 = calcAverage(44, 23, 71);
const avgKoalas01 = calcAverage(65, 54, 49);

const avgDolphins02 = calcAverage(85, 54, 41);
const avgKoalas02 = calcAverage(23, 34, 27);

const checkWinner = function (avgDolphins, avgKoalas) {
  if (avgDolphins > avgKoalas && avgDolphins / avgKoalas >= 2) {
    return console.log(`Dolphins Win (${avgDolphins} vs. ${avgKoalas}).`);
  } else if (avgDolphins < avgKoalas && avgKoalas / avgDolphins >= 2) {
    return console.log(`Koalas Win (${avgKoalas} vs. ${avgDolphins}).`);
  } else {
    return console.log(`No one`);
  }
};

checkWinner(avgDolphins01, avgKoalas01);
checkWinner(avgDolphins02, avgKoalas02);
