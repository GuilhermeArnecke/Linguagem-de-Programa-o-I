package analistadevendasfuncional;

public class Venda {
    private final String produto;
    private final double valor;
    private final String categoria;

    public Venda(String produto, double valor, String categoria) {
        this.produto = produto;
        this.valor = valor;
        this.categoria = categoria;
    }

    public String getProduto() {
        return produto;
    }

    public double getValor() {
        return valor;
    }

    public String getCategoria() {
        return categoria;
    }
}

