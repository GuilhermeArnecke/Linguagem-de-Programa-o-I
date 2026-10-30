package sistemapagamento;

public class Boleto extends MetodoPagamento {
    @Override
    public void processar(double valor) {
        System.out.println("Meio de pagamento boleto");
        System.out.printf("Boleto registrado no valor de R$ %.2f", valor);
    }
}
