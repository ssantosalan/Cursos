function add(n1: number, n2: number) {
  return n1 + n2;
}

function printResult(n: number): void {
  console.log(`Result: ${n}`);
}

function addAndHandle(n1: number, n2: number, cb: (num: number) => void) {
  const result = n1 + n2;
  cb(result);
}

addAndHandle(5, 5, (result) => {
  console.log(result);
  return true;
});


printResult(add(10, 5));

let combineValues: (a: number, b: number) => number;
combineValues = add;
// combineValues = printResult; // Por tipar, tem que ter a mesma quantidade de parâmetros e o tipo

console.log(combineValues(5, 5));

