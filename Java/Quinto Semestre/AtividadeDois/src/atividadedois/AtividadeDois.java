package atividadedois;
import java.util.Scanner;

public class AtividadeDois {
    
    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        boolean continuarSistema = true;
        
        while(continuarSistema){
            System.out.println("simulador bancario");
            System.out.println("1. simular rendimento anual");
            System.out.println("2. sair do sistema");
            System.out.println("escolha uma opção:");
            int opcao = entrada.nextInt();
            
            if (opcao == 1){
                System.out.println("digite o valor do deposito mensal:");
                double depositoMensal = entrada.nextDouble();
                System.out.println(("digite a taxa de juros mes"));
                double taxaJuros = entrada.nextDouble();
                double saldoAcumulado = 0;
                
                System.out.println("projeção mes a mes");
                for(int i = 1; i <= 12; i++){
                    saldoAcumulado += depositoMensal;
                    saldoAcumulado += saldoAcumulado * (taxaJuros/100);
                    System.out.printf("Mes %d: saldo total acumulado = %.2f%n", i, saldoAcumulado);
                }
                System.out.println("--------");
            } else if (opcao == 2){
                continuarSistema = false;
                System.out.println("encerrando o simulador");
            }
        }
    }
    
}