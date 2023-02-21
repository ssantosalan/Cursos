package humanos;
public abstract class Pessoa {
    public String nome;
    public int idade;
    public String sexo;

    public void apresentar(String nome) {
        System.out.println("Olá, meu nome é " + nome);
    }
}
