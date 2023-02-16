public class ListaPessoa {
    List<Pessoa> listaPessoa = new List<Pessoa>();

    public void adicionarPessoa(Pessoa pessoa) {
        listaPessoa.add(pessoa);
    }

    public void listaPessoas() {
        for (Pessoa pessoa : listaPessoa) {
            System.debug('Nome: ' + pessoa.nome);
        }
    }

    public Pessoa getFilhoMaisVelho () { 
        Pessoa filhoVelho = listaPessoa.get(0);
        for (Integer i = 0; i < listaPessoa.size(); i++) {
            if (filhoVelho.anoNascimento > listaPessoa.get(i).anoNascimento) {
                filhoVelho = listaPessoa.get(i);
            }

        }
        System.debug('Filho mais velho: ' + filhoVelho);
        return filhoVelho;
    }

    public Pessoa getFilhoMaisNovo () { 
        Pessoa filhoNovo = listaPessoa.get(0);
        for (Integer i = 0; i < listaPessoa.size(); i++) {
            if (filhoNovo.anoNascimento < listaPessoa.get(i).anoNascimento) {
                filhoNovo = listaPessoa.get(i);
            }

        }
        System.debug('Filho mais novo: ' + filhoNovo);
        return filhoNovo;
    }


    
    
}