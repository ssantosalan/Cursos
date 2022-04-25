// Code goes here!

const printOuput: (a: number, b: number) => void = (output) =>
  console.log(output);

printOuput(10, 1);

const add = (...numbers: number[]) => {
  console.log(numbers);
  let result = numbers.reduce((acc, curr) => acc + curr, 0);
  return result;
};

const addedNumbers = add(5, 5, 5, 5, 5);

console.log(addedNumbers);
