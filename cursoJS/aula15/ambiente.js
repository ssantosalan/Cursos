let num = [5, 2, 9, 3]
num[4] = 6
num.push(1)
num.sort()
console.log(`Nosso vetor tem ${num.length} elementos`)
console.log(num)
let pos = num.indexOf(2)
if (pos == -1) {
    console.log(`O valor não foi encontrado!`)
} else {
    console.log(`O valor 2 está na posição ${pos}`)
}
