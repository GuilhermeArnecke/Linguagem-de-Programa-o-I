package folhapagamento;

public class Gerente extends Funcionario {
    
    public Gerente(String nome, double salario) {
        super(nome, salario);
    }
    
    @Override
    public double getBonificacao() {
        return (this.salario * 0.15) + 500.0;
    }
    
}
