const dolphisScore01 = 96;
const dolphisScore02 = 108;
const dolphisScore03 = 89;
const dolphinsAverage = (dolphisScore01 + dolphisScore02 + dolphisScore03) / 3;

const koalasScore01 = 88;
const koalasScore02 = 91;
const koalasScore03 = 110;
const koalasAverage = (koalasScore01 + koalasScore02 + koalasScore03) / 3;


console.log(dolphinsAverage);
console.log(koalasAverage);

if (dolphinsAverage > koalasAverage) {
    console.log("Dolphins Wins!");
} else {
    console.log("Koala Wins!");
}