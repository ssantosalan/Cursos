"use strict";

const temperatures = [3, -2, -6, -1, "error", 9, 13, 17, 15, 14, 9, 5];
// - What is temp amplitude?  Answer: difference between highest and lowest temp
const calcTempAmplitude = function (temps) {
  let max = temps[0];
  let min = temps[0];
  for (let curTemp of temps) {
    if (typeof curTemp !== "number") continue;

    if (curTemp > max) max = curTemp;
    if (curTemp < min) min = curTemp;
  }
  console.log(max, min);
  return max - min;
};

const amplitude = calcTempAmplitude(temperatures);
console.log(amplitude);