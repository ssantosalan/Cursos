// Exporting module

console.log('Exporting module');

// Blocking code
console.log("Start fetching users");
await fetch('https://jsonplaceholder.typicode.com/users/1/posts');
console.log('Finish fetching users');