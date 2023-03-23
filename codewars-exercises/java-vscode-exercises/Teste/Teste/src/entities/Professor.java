package entities;

public class Professor extends Pessoa {
    private String disciplina;


    public Professor(String disciplina, String nome, String cpf) {
        this.disciplina = disciplina;
        this.nome = nome;
        this.cpf = cpf;
    }

    public Professor() {
    }

    public Professor(String disciplina) {
        this.disciplina = disciplina;
    }

    public String getDisciplina() {
        return this.disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public Professor disciplina(String disciplina) {
        setDisciplina(disciplina);
        return this;
    }

    @Override
    public String toString() {
        return "{" +
            " disciplina='" + getDisciplina() + "'" +
            " nome='" + getNome() + "'" +
            " cpf='" + getCpf() + "'" +
            "}";
    }




}
