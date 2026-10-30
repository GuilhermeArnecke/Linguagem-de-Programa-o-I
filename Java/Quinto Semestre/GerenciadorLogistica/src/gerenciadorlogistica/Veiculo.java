package gerenciadorlogistica;

public class Veiculo {

    private String placa;
    private String modelo;
    private double capacidadeCargaKg;

    public Veiculo(String placa, String modelo, double capacidadeCargaKg) {
        this.placa = placa;
        this.modelo = modelo;
        this.capacidadeCargaKg = capacidadeCargaKg;
    }

    public String getPlaca() {
        return placa;
    }

    public String getModelo() {
        return modelo;
    }

    public double getCapacidadeCargaKg() {
        return capacidadeCargaKg;
    }

    public double calcularFrete(double distanciaKm) {
        return distanciaKm * 2.50;
    }
}