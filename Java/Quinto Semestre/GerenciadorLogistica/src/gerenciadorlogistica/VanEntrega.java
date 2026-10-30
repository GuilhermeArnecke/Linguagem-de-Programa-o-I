package gerenciadorlogistica;

public class VanEntrega extends Veiculo {

    private boolean possuiRefrigeracao;

    public VanEntrega(String placa, String modelo, double capacidadeCargaKg, boolean possuiRefrigeracao) {
        super(placa, modelo, capacidadeCargaKg);
        this.possuiRefrigeracao = possuiRefrigeracao;
    }

    public boolean isPossuiRefrigeracao() {
        return possuiRefrigeracao;
    }

    @Override
    public double calcularFrete(double distanciaKm) {

        double valorBase = super.calcularFrete(distanciaKm);

        if (possuiRefrigeracao) {
            valorBase = valorBase * 1.20;
        }

        return valorBase;
    }
}