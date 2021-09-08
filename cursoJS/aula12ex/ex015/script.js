function verificar() {
    var data = new Date()
    var ano = data.getFullYear()
    var fano = document.getElementById('txtano')
    var res = document.getElementById('res')

    if (fano.value.length == 0 || Number(fano.value) > ano) {
        window.alert('[ERRO]')
    } else {
        var fsex = document.getElementsByName('radsex')
        var idade = ano - Number(fano.value)
        var gênero = ''
        var img = document.createElement('img')
        img.setAttribute('id', 'foto')
        if (fsex[0].checked) {
            gênero = 'Homem'
            if (idade >=0 && idade < 2) {
                //bebê
                img.setAttribute('src', 'baby-m.png')
            } else if (idade < 13) {
                //criança
                img.setAttribute('src', 'child-m.png')
            } else if (idade < 20) {
                // adolescente
                img.setAttribute('src', 'teenager-m.png')
            } else if (idade < 50) {
                //adulto
                img.setAttribute('src', 'adult-m.png')
            } else {
                //idoso
                img.setAttribute('src', 'older-m.png')
            }
        } else if (fsex[1].checked) {
            gênero = 'Mulher'
            if (idade >=0 && idade < 2) {
                //bebê
                img.setAttribute('src', 'baby-f.png')
            } else if (idade < 13) {
                //criança
                img.setAttribute('src', 'child-f.png')
            } else if (idade < 20) {
                // adolescente
                img.setAttribute('src', 'teenager-f.png')
            } else if (idade < 50) {
                //adulto
                img.setAttribute('src', 'adult-f.png')
            } else {
                //idoso
                img.setAttribute('src', 'older-f.png')
            }
        } 
        res.style.textAlign = 'center'
        res.innerHTML = `${gênero} com ${idade} anos`
        res.appendChild(img)
    }

}
