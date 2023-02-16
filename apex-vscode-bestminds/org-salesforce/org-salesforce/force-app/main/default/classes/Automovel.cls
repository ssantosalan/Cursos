public abstract class Automovel {

    public Integer anoDeFabricacao;
    public String modelo;
    public String marca;
    public String placa;

    public Integer AnoUsoAutomovel(Integer AnoFabricacao) {
        return Datetime.now().year() - AnoFabricacao;
    }

}