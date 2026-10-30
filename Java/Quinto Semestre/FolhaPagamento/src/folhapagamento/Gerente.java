/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package folhapagamento;

/**
 *
 * @author giovannigomescastagna
 */
public class Gerente extends Funcionario {
    public Gerente(String nome, double salario) {
        super(nome, salario);
    }
    
    @Override
    public double getBonificacao() {
        return (this.salario * 0.15) + 500.0;
    }
}
