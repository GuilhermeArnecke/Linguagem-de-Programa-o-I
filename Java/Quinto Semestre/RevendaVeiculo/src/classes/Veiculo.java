package classes;

public class Veiculo {
    private String marca;
    private String modelo;
    private String cor;
    private Integer ano;
    private Double valor;
    
    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public void setAno(Integer ano) {
        this.ano = ano;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }
    
    public String getMarca() {
        return marca;
    }

    public String getModelo() {
        return modelo;
    }

    public String getCor() {
        return cor;
    }

    public Integer getAno() {
        return ano;
    }

    public Double getValor() {
        return valor;
    }
    
    @Override
    public String toString() {
        return "Veiculo{" + "marca=" + marca + ", modelo=" + modelo + ", cor=" + cor + ", ano=" + ano + ", valor=" + valor + '}';
    }
}
