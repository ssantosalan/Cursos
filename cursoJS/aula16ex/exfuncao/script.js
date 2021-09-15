let num = document.querySelector('input#fnum')
let lista = document.querySelector('select#flista')
let res = document.querySelector('div#res')
let valores = []
let soma

function isNumero(n) {
    if (Number(n) >= 1 && Number(n) <= 100) {
        return true
    } else {
        return false
    }
}

function inLista(n, l) {
    if (l.indexOf(Number(n)) != -1) {
        return true
    } else {
        return false
    }
}

function somar(num){
    let soma = soma + num
    return soma 
} 

function adicionar() {

    if (isNumero(num.value) && !inLista(num.value, valores)) {
        valores.push(Number(num.value))
        let item = document.createElement('option')
        item.text = `Número ${num.value} adicionado!`
        flista.appendChild(item)
        res.innerHTML = ''
    } else {
        window.alert('Valor inválido ou já encontrado na lista.')
    }
    num.value = ''
    num.focus()

    soma = soma + somar(num.value)

}

function finalizar() {
    if (valores.length == 0) {
        window.alert(`Adiciona valores antes de continuar!`)
    } else {
        res.innerHTML = ''
    }
    let soma = 0
    let media = 0
    for (let pos in valores) {
        soma = soma + valores[pos]
    }
    media = soma / valores.length

    res.innerHTML = `<p>Ao todo temos ${valores.length} números cadastrados.</p> 
    <p>
        O maior valor informado foi ${Math.max.apply(null, valores)}.
    </p>
    <p>
        O menor valor informado foi ${Math.min.apply(null, valores)}.
    </p>
    <p>
        Somando todos os valores, temos ${soma} .
    </p>
    <p>
        A média dos valores digitados é ${media}.`
    
    
}



