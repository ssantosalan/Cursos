interface Greetable {
  name: string;

  greet(phrase: string): void;
}

class Person implements Greetable {
  name: string;
  age = 30;
  constructor(n: string) {
    this.name = n;
  }

  greet(phrase: string) {
    console.log(`${this.name}${this.age} ${phrase}`);
  }
}

let user1: Greetable;

user1 = {
  name: "Alan",
  greet(phrase: string) {
    console.log(`${this.name} ${phrase}`);
  },
};

console.log(user1);

user1.greet("eaí");

let person = new Person("Alan");
console.log(person);
person.greet("hello");
