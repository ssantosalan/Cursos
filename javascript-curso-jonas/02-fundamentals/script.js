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
