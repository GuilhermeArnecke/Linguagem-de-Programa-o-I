/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package folhapagamento;

/**
 *
 * @author giovannigomescastagna
 */
public class ControleBonificacao {
    
    private double totalDeBonificacoes = 0.0;
    
    public void registrar(Funcionario f) {
        System.out.println("------------------------");
        System.out.println("Registrado funcionário: " + f.getNome());
        System.out.println("Salário base: R$ " + f.getSalario());
        
        double bonificacaoAtual = f.getBonificacao();
        
        System.out.printf("Bonificação calculada: R$ %.2f\n", 
                bonificacaoAtual);
        this.totalDeBonificacoes += bonificacaoAtual;
    }
    
    public double getTotalDeBonificacoes() {
        return this.totalDeBonificacoes;
    }
}
