/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package folhapagamento;

/**
 *
 * @author giovannigomescastagna
 */
public class Diretor extends Funcionario {
    
    public Diretor(String nome, double salario) {
        super(nome, salario);
    }
    
    @Override
    public double getBonificacao() {
        return (super.getBonificacao() * 2) + 1000.0;
    }    
}
