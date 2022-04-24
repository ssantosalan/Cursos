let userInput: unknown;
let userName: string;

userInput = 10;
userInput = "Texto";

if (typeof userInput === "string") {
  userName = userInput;
  console.log(userName);
}

function generateError(message: string, code: number): never {
  throw { message: message, errorCode: code };
}

generateError(`Erro no sistema`, 500)