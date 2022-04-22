//Importing module
import './shoppingCart.js';

console.log('Importing module');

// const res = await fetch('https://pokeapi.co/api/v2/pokemon/ditto');

// const res = await fetch('https://jsonplaceholder.typicode.com/users/1/posts');
// const data = await res.json();
// console.log(data);

const getLastPost = async function () {
  const res = await fetch('https://jsonplaceholder.typicode.com/users/1/posts');
  const data = await res.json();
  //   console.log(data);
  return { title: data.at(-1).title, text: data.at(-1).body };
};
const lastPost = getLastPost();
console.log(lastPost);

// console.log(getLastPost().then(res => console.log(res)));

const  lastPost2 = await getLastPost();
console.log(lastPost2);
