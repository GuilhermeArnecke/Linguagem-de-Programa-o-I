package listacompras;

import java.util.Scanner;

public class ListaCompras {
    
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int totalItens = 5;
        
        String[] itens = new String[totalItens];
        double[] precos = new double[totalItens];
        
        System.out.println("== Cadastro de Itens da Lista de Compras ==");
        for (int i = 0; i < totalItens; i++) {
            System.out.print("\nNome do produto #" + (i + 1) + ": ");
            itens[i] = entrada.nextLine();
            System.out.print("Preco de " + (i + 1) + " (R$): ");
            precos[i] = entrada.nextDouble();
            entrada.nextLine();
        }
        System.out.println("===========================");
        System.out.println("   CUPOM FISCAL IMPRESSO   ");
        System.out.println("===========================");
        
        double totalGeral = 0;
        for (int i = 0; i < itens.length; i++) {
            System.out.printf("%d. %-15s -> R$ %.2f\n", 
                    (i + 1), 
                    itens[i], 
                    precos[i]);
            totalGeral += precos[i];
        }
        System.out.println("================================");
        System.out.printf("Valor total da compra: R$ %.2f\n", totalGeral);
        System.out.println("================================");
        entrada.close();
    }
    
}
