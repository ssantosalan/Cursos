package humanos;

public abstract class Pessoa {
    public String nome;
    public int idade;
    public String sexo;

    public void apresentar(String nome) {
        System.out.println("Olá, meu nome é " + nome);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

}
