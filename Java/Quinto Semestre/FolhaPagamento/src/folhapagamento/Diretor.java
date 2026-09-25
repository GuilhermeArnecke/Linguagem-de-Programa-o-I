package folhapagamento;

public class Diretor extends Funcionario {
    
    public Diretor(String nome, double salario) {
        super(nome, salario);
    }
    
    @Override
    public double getBonificacao() {
        return (super.getBonificacao() * 2) + 1000.0;
    }
    
}
