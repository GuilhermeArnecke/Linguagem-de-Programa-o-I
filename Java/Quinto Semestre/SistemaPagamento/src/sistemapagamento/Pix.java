package sistemapagamento;

public class Pix extends MetodoPagamento {
    
    @Override
    public void processar(double valor) {
        double valorDesconto = valor * 0.95;
        System.out.println("Meio de pagamento selecionado: PIX");
        System.out.println("Desconto aplicado com sucesso!");
        System.out.printf("Valor líquido R$: %.2f\n", valorDesconto);
    }
    
}
