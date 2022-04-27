class Department {
  // private id: string;
  // public name: string;
  private employees: string[] = [];

  constructor(private readonly id: string, public name: string) {
    // this.name = name;
  }
  describe(this: Department) {
    console.log(`Department: ${this.name}; id: ${this.id}`);
  }

  addEmployees(employee: string) {
    this.employees.push(employee);
  }
  printEmployees() {
    console.log(this.employees);
  }
}

class itDepartment extends Department {
  public admin: string[];
  constructor(id: string, admin: string[]) {
    super(id, "it department");
    this.admin = admin;
  }
}

class AccountingDepartment extends Department {

  constructor(id: string, public reports: string[]) {
    super(id, "report department");
    this.reports = reports;
  }
  addReport(text: string){
    this.reports.push(text);
  }
  printReport(){
    console.log(this.reports);
    
  }
}

const report = new AccountingDepartment("b2", ["vamo que vamo"]);
report.addReport("Reportando");
report.printReport();
report.addEmployees("Bruna")
report.printEmployees();
console.log(report);


const it = new itDepartment("10", ["Alann"]);

it.describe();

// const itCopy = { name: "Alanzoka", describe: it.describe, employees: [] };

// itCopy.describe();

it.addEmployees("Alan");
it.printEmployees();
console.log(it);
