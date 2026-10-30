package gerenciadorlogistica;

public class Caminhao extends Veiculo {

    private int quantidadeEixos;

    public Caminhao(String placa, String modelo, double capacidadeCargaKg, int quantidadeEixos) {
        super(placa, modelo, capacidadeCargaKg);
        this.quantidadeEixos = quantidadeEixos;
    }

    public int getQuantidadeEixos() {
        return quantidadeEixos;
    }

    @Override
    public double calcularFrete(double distanciaKm) {

        double valorBase = super.calcularFrete(distanciaKm);
        double taxaEixos = quantidadeEixos * 50.00;

        return valorBase + taxaEixos;
    }
}