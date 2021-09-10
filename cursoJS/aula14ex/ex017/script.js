function gerar() {

    var txtnumero = document.querySelector('input#txtnumero')
    var numero = Number(txtnumero.value)
    var res = document.querySelector('div#res')
    
    for (var i = 1; i <= 10; i++) {
        res.innerHTML += `<p>${numero} x ${i} = ${numero * i}</p>   `

    }

}