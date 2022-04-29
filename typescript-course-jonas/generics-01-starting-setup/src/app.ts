const names: Array<string> = []; // string[]
// names[0].split(' ');

function merge<T, U>(objA: T, objB: U) {
  return Object.assign(objA, objB);
}
const mergedObj = merge({ name: "Max" }, { age: 30 });

console.log(mergedObj);
console.log(mergedObj.age);

