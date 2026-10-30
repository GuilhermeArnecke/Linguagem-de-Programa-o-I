/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package folhapagamento;

/**
 *
 * @author giovannigomescastagna
 */
public class FolhaPagamento {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ControleBonificacao controle = new ControleBonificacao();
        
        Funcionario funcionario = new Funcionario("Func", 3000);
        Gerente gerente = new Gerente("Ger", 6000);
        Diretor diretor = new Diretor("Diret", 12000);
        
        controle.registrar(funcionario);
        controle.registrar(gerente);
        controle.registrar(diretor);
        
        System.out.println("---------");
        System.out.printf("GASTOS TOTAIS DA EMPRESA COM BÔNUS: R$ %.2f\n", controle.getTotalDeBonificacoes());
        System.out.println("--------------------");

    }
    
}
