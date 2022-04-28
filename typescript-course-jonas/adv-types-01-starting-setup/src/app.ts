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

function add(a: Combinable, b: Combinable) {
  if (typeof a === "string" || typeof b === typeof "string") {
    return a.toString() + b.toString();
  }
  return +a + +b;
}

type UnknowEmployee = Employee | Admin;
function printEmployeeInformation(emp: UnknowEmployee) {
  if ("privileges" in emp) {
    console.log(`Privileges: ${emp.privileges}`);
  }
  if ("startDate" in emp) {
    console.log(`Start date: ${emp.startDate}`);
  }
}

printEmployeeInformation(e1);

class Car {
  drive() {
    console.log("driving...");
  }
}
class Truck {
  drive() {
    console.log("Driving a truck");
  }
  loadCargo(amount: number) {
    console.log("Loading cargo..." + amount);
  }
}

type Vehicle = Car | Truck;
const v1 = new Car();
const v2 = new Truck();

function useVehicle(vehicle: Vehicle) {
  vehicle.drive();
  if (vehicle instanceof Truck) {
    vehicle.loadCargo(1000);
  }
}

useVehicle(v1);
useVehicle(v2);
