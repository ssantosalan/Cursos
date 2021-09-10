function contar(){
   
    let txtinicio = document.getElementById('txtinicio')
    let txtfim = document.getElementById('txtfim')
    let txtpasso = document.getElementById('txtpasso')
    let res = document.getElementById('res')
    
    res.innerHTML = `<p>Contando:</p>`

    if (txtinicio.value.length == 0 || txtfim.value.length == 0 || txtpasso.value.length == 0) {
        window.alert('[ERRO] Faltam dados!')
    } else {
         res.innerHTML= 'Contando: '
         let inicio = Number(txtinicio.value)
         let fim = Number(txtfim.value)
         let passo = Number(txtpasso.value)
         
         if(passo <= 0) {
             window.alert('Passo inválido! Considerando PASSO 1')
             passo = 1
         }
         if (inicio < fim){
            //contagem crescente
            for(let c = inicio; c <= fim; c += passo) {
                res.innerHTML += ` ${c} \u{1F449} `
            }
            //contagem regressiva
         } else{
             for(let c = inicio; c >= fim; c -= passo) {
                res.innerHTML += ` ${c} \u{1F449} `
             }
         }
         res.innerHTML += `\u{1F3C1}`
           
    } 
 
 }