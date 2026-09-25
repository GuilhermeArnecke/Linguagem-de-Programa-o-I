package folhapagamento;

public class FolhaPagamento {

    public static void main(String[] args) {
        Funcionario funcionario = new Funcionario("Func", 3000);
        Gerente gerente = new Gerente("Ger", 6000);
        Diretor diretor = new Diretor("Diret", 12000);
        
        System.out.printf("Bonus do Funcionario %s: R$ %.2f\n",
                funcionario.getNome(),
                funcionario.getBonificacao());
        System.out.printf("Bonus do Gerente %s: R$ %.2f\n",
                gerente.getNome(),
                gerente.getBonificacao());
        System.out.printf("Bonus do Diretor %s: R$ %.2f\n",
                diretor.getNome(),
                diretor.getBonificacao());
    }
}
    

