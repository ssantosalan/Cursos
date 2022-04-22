//Importing module
import './shoppingCart.js';

console.log('Importing module');

// const res = await fetch('https://pokeapi.co/api/v2/pokemon/ditto');

// const res = await fetch('https://jsonplaceholder.typicode.com/users/1/posts');
// const data = await res.json();
// console.log(data);

// const getLastPost = async function () {
//   const res = await fetch('https://jsonplaceholder.typicode.com/users/1/posts');
//   const data = await res.json();
//   //   console.log(data);
//   return { title: data.at(-1).title, text: data.at(-1).body };
// };
// const lastPost = getLastPost();
// console.log(lastPost);

// console.log(getLastPost().then(res => console.log(res)));

// const  lastPost2 = await getLastPost();
// console.log(lastPost2);

// -----------

/* const ShoppingCart2 = (function () {
  const cart = [];
  const shippingCost = 10;
  const totalPrice = 237;
  const totalQuantity = 23;
  const addToCart = function (product, quantity) {
    cart.push({ product, quantity });
    console.log(`${quantity} ${product} added to cart`);
  };

  const orderStock = function (product, quantity) {
    cart.push({ product, quantity });
    console.log(`${quantity} ${product} ordered from supplier`);
  };

  return {
      addToCart,
      cart,
      totalPrice,
      totalQuantity,
      shippingCost
  }
})();

ShoppingCart2.addToCart('apple', 4)
ShoppingCart2.addToCart('pizza', 2)
console.log(ShoppingCart2);
console.log(ShoppingCart2.shippingCost); */

// --------------

import cloneDeep from './node_modules/lodash-es/cloneDeep.js';

const state = {
  cart: [
    { product: 'bread', quantify: 5 },
    { product: 'pizza', quantify: 2 },
  ],
  user: { loggedIn: true },
};

const stateClone = Object.assign({}, state);
const stateDeepClone = cloneDeep(state);

state.user.loggedIn = false;
console.log(stateClone);
console.log(stateDeepClone);
