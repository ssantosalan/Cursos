function combine(
  n1: number | string,
  n2: number | string,
  resultConversion: "as-number" | "as-text"
) {
  let result;
  if (
    (typeof n1 === "number" && typeof n2 === "number") ||
    resultConversion === "as-number"
  ) {
    result = +n1 + +n2;
  } else {
    result = n1.toString() + n2.toString();
  }
  return result;
}

const combineAges = combine(25, 25, "as-number");
console.log(combineAges);

const combineStringAges = combine("max", 25, "as-number");
console.log(combineStringAges);

const combineNames = combine("Alan", "Bárbara", "as-text");
console.log(combineNames);
