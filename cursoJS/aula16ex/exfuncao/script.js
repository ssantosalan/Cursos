function adicionar() {
    let txtnumero = document.querySelector('input#txtnumero')
    let res = document.querySelector('div#res')
    let numero = Number(txtnumero.value)
    res.innerHTML = numero
}
