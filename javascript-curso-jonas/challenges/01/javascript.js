const markWeight = 78;
const markHeight = 1.69;
const johnWeight = 92;
const johnHeight = 1.95;
let markHigherBMI = false;

function BMI(weight, height) {
  return weight / height ** 2;
}

const markBMI = BMI(markWeight, markHeight);
const johnBMI = BMI(johnWeight, johnHeight);
console.log(markBMI, johnBMI);

const mB = markWeight / markHeight ** 2;
const jB = johnWeight / johnHeight ** 2;

console.log(mB, jB);

if (mB > jB) {
  markHigherBMI = true;
  console.log(markHigherBMI);
} else {
  console.log(markHigherBMI);
}

// Esse código foi feito bem desleixado mesmo. Apenas testes.
