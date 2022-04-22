// Exporting module

console.log('Exporting module');

// Blocking code
console.log("Start fetching users");
await fetch('https://jsonplaceholder.typicode.com/users/1/posts');
console.log('Finish fetching users');

export const cart = [];
const shoppingCart = 10;

export const addToCart = function(product, quantity ) {
    cart.push({product, quantity})
    console.log(`${quantity} ${product} added to cart`);
}

const totalPrice = 237;
const totalQuantity = 23;

export { totalPrice, totalQuantity as tq}