package entities;

public class Aluno extends Pessoa {
    private String escola;
    private String ano;

    public Aluno(String nome, String cpf, String escola, String ano) {
        this.nome = nome;
        this.cpf = cpf;
        this.escola = escola;
        this.ano = ano;
    }

    public Aluno() {
    }

    public String getEscola() {
        return this.escola;
    }

    public void setEscola(String escola) {
        this.escola = escola;
    }

    public String getAno() {
        return this.ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    @Override
    public String toString() {
        return "{" +
                ", nome='" + getNome() + "'" +
                ", cpf='" + getCpf() + "'" +
                " escola='" + getEscola() + "'" +
                ", ano='" + getAno() + "'" +
                "}";
    }

}
