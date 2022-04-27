class Departament {
  name: string;
  private employees: string[] = [];

  constructor(n: string) {
    this.name = n;
  }
  describe(this: Departament) {
    console.log(`Accounting: ${this.name}; ${this.employees}`);
  }

  addEmployees(employee: string) {
    this.employees.push(employee);
  }
  printEmployees() {
    console.log(this.employees);
  }
}

const accounting = new Departament("accounting");
accounting.describe();

// const accountingCopy = { name: "Alanzoka", describe: accounting.describe, employees: [] };

// accountingCopy.describe();

accounting.addEmployees('Alan');
accounting.printEmployees();
