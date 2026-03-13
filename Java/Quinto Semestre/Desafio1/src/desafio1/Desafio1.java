package desafio1;

import java.text.DecimalFormat;

public class Desafio1 {
    public static void main(String[] args) {
       double cotacao = 5.26;
       double real = 400;
       converterValor(real, cotacao);
    }
    
    public static void converterValor(double real, double cotacao) {
        DecimalFormat df = new DecimalFormat("#,##0.00");
        double total;
        if (cotacao != 0) {
            total = real / cotacao;
            System.out.println("Valor Real: R$ " + df.format(real) + "\nValor Dolar: U$ " 
            + df.format(cotacao) + "\nTotal Convertido: U$ " + df.format(total));
        } else {
            System.out.println("Valor Real: R$ " + df.format(real) + "\nValor Dolar: U$ " 
            + df.format(cotacao) + "\nNao ha uma conversao a ser feita...");
        }
    }
}
