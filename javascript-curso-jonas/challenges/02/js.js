const johnMass = 70
const johnHeight = 1.60
const markMass = 90
const markHeight = 1.90

function IMB (height, mass) {
    return mass / height ** 2
}

const johnIMB = IMB(johnHeight, johnMass)
const markIMB = IMB(markHeight, markMass)

if (johnIMB > markIMB) {
    console.log(`John Wins!`)
    console.log(`John's BMI ${johnIMB} is higher than Marks's ${markIMB}`)
} else {
    console.log(`Mark Wins!`)
    
}