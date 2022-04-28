type Admin = {
  name: string;
  privileges: string[];
};

type Employee = {
  name: string;
  startDate: Date;
};

type ElevatedEmployee = Admin & Employee;

const e1: ElevatedEmployee = {
  name: "Alan  ",
  privileges: ["SS"],
  startDate: new Date(),
};

type Combinable = string | number;
type Numeric = boolean | number;
type Universal = Combinable & Numeric;

function add(a: number, b: number): number;
function add(a: string, b: string): string;
function add(a: string, b: number): string;
function add(a: number, b: string): string;
function add(a: Combinable, b: Combinable) {
  if (typeof a === "string" || typeof b === typeof "string") {
    return a.toString() + b.toString();
  }
  return +a + +b;
}

const result = add("Alan", " Santos");
result.split(" ");

const fetchedUserData = {
  id: "u1",
  name: "Alan",
  job: { title: "CEO", description: "my own company" },
};

console.log(fetchedUserData?.job?.title);

const userInput = null;
const storedData = userInput ?? "DEFAULT";
console.log(storedData);


// type UnknowEmployee = Employee | Admin;
// function printEmployeeInformation(emp: UnknowEmployee) {
//   if ("privileges" in emp) {
//     console.log(`Privileges: ${emp.privileges}`);
//   }
//   if ("startDate" in emp) {
//     console.log(`Start date: ${emp.startDate}`);
//   }
// }

// printEmployeeInformation(e1);

// class Car {
//   drive() {
//     console.log("driving...");
//   }
// }
// class Truck {
//   drive() {
//     console.log("Driving a truck");
//   }
//   loadCargo(amount: number) {
//     console.log("Loading cargo..." + amount);
//   }
// }

// type Vehicle = Car | Truck;
// const v1 = new Car();
// const v2 = new Truck();

// function useVehicle(vehicle: Vehicle) {
//   vehicle.drive();
//   if (vehicle instanceof Truck) {
//     vehicle.loadCargo(1000);
//   }
// }

// useVehicle(v1);
// useVehicle(v2);

// interface Bird {
//   type: "bird";
//   flyingSpeed: number;
// }

// interface Horse {
//   type: "horse";
//   runningSpeed: number;
// }

// type Animal = Bird | Horse;

// function moveAnimal(animal: Animal) {
//   let speed;
//   switch (animal.type) {
//     case "bird":
//       speed = animal.flyingSpeed;
//       break;
//     case "horse":
//       speed = animal.runningSpeed;
//   }
//   console.log("moving at speed:" + speed);
// }

// moveAnimal({ type: "bird", flyingSpeed: 10 });

// // const userInputElement = <HTMLInputElement>(
// //   document.getElementById("user-input")
// // );

// const userInputElement = (<HTMLInputElement>(
//   document.getElementById("user-input")!
// )) as HTMLInputElement;

// userInputElement.value = "Hi there";

// interface ErrorContainer {
//   // {name: 'Not a valid email, ussername: "Must start with a character"}
//   [prop: string]: string;
// }

// const errorBag: ErrorContainer = {
//   email: "Not a valid email!",
//   ussername: "Must start with a capital character",
// };
