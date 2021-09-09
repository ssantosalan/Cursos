function contar(){
   
    var txtinicio = document.querySelector('input#txtinicio')
    var inicio = Number(txtinicio.value)
    var txtfim = document.querySelector('input#txtfim')
    var fim = Number(txtfim.value)
    var txtpasso = document.querySelector('input#txtpasso')
    var passo = Number(txtpasso.value)
    var res = document.querySelector('div#res')
    
    res.innerHTML = `<p>Contando:</p>`

    if (passo <= 0 && inicio != 0 ) {
        window.alert('Valor inválido! Será considerado passo 1')
        passo = 1
    }

    if (inicio === 0) {
        res.innerHTML= 'Impossível contar!'
    } else {
        for (var i = inicio; i < fim; i = i + passo) {
            res.innerHTML += i + '... '
        }
        res.innerHTML += i
    }

    
    
    
    
    

}