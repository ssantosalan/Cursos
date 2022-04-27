class Departament {
  name: string;

  constructor(n: string) {
    this.name = n;
  }
  describe(this: Departament) {
    console.log(`Accounting: ${this.name}`);
  }
}

const accounting = new Departament("accounting");
accounting.describe();

const accountingCopy = { name: "Alanzoka", describe: accounting.describe };

accountingCopy.describe();
