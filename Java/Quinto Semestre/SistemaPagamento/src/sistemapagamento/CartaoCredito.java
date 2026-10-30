package sistemapagamento;

public class CartaoCredito extends MetodoPagamento {
    private int parcelas;
    private final double TAXA_FIXA = 2;
    
    public CartaoCredito(int parcelas) {
        this.parcelas = parcelas;
    }
    
    @Override
    public void processar(double valor) {
        double valorTotal = valor + TAXA_FIXA;
        double valorParcela = valorTotal / parcelas;
        System.out.println("Meio Pagamento Cartao Credito");
        System.out.printf("Taxa de processamento de R$ %.2f inclusa\n", TAXA_FIXA);
        System.out.printf("Pagamento autorizado em %dx de R$ %.2f " 
                + "(Total: R$ %.2f)\n", parcelas, valorParcela, valorTotal);
    }
}
