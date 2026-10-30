/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package folhapagamento;

/**
 *
 * @author giovannigomescastagna
 */
public class Funcionario {
    private String nome;
    protected double salario;
    
    public Funcionario(String nome, double salario) {
        this.nome = nome;
        this.salario = salario;
    }
        
    public double getBonificacao() {
        return this.salario * 0.10;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public double getSalario() {
        return this.salario;
    }
}
