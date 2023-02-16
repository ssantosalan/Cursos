public with sharing class Execucao {
    List<PessoaProf> lstPessoa = new List<PessoaProf>();
    public void adicionarPessoa(String Nome, Date dataNascimento){
        PessoaProf objPessoa = new PessoaProf();
        objPessoa.NomeCompleto = Nome;
        objPessoa.DataNascimento = dataNascimento;
        lstPessoa.add(objPessoa);
    }
    public PessoaProf maisNova(){
        Date dt = Date.newInstance(1900,12,31);
        Integer nova = 0;
        for (Integer i = 0; i < lstPessoa.size(); i++) {
            if(lstPessoa[i].DataNascimento > dt){
                dt = lstPessoa[i].DataNascimento;
                nova = i;
            }
        }
        return lstPessoa[nova];
    }
    public PessoaProf maisVelha(){
        Date dt = Date.newInstance(2999,12,31);
        Integer velha = 0;
        for (Integer i = 0; i < lstPessoa.size(); i++) {
            if(lstPessoa[i].DataNascimento < dt){
                dt = lstPessoa[i].DataNascimento;
                velha = i;
            }
        }
        return lstPessoa[velha];
    }
}