/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package calculadoradesconto;

import java.text.DecimalFormat;

/**
 *
 * @author guilh
 */
public class SistemaProcedural {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        double valorVenda = 500.0;
        double valorFinal = aplicaDesconto(valorVenda);
        exibirRelatorio(valorFinal);
    }
    
    public static void exibirRelatorio(double valor) {
        DecimalFormat df = new DecimalFormat("#,##0.00");
        System.out.println("venda finalizada. Valor: R$ " + df.format(valor));
    }
    
    public static double aplicaDesconto(double valor){
        if(valor > 100) return valor * 0.90;
        return valor;
    }
    
}
