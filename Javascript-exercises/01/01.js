var isSquare = function (n) {
  if (n === Math.floor(Math.sqrt(n)) * Math.floor(Math.sqrt(n)) || n === 0)
    return true;
  else return false;
};
