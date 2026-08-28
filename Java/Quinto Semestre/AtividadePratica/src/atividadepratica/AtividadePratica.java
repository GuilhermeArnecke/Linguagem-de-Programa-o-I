package atividadepratica;

import java.util.Scanner;

public class AtividadePratica {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.println("== GERADOR DE TABUADA ==");
        System.out.println("Digite qual numero da tabuada quer calcular");
        
        int numeroEscolhido = entrada.nextInt();
        
        System.out.println("\nQual o numero inicial?");
        int numeroInicial = entrada.nextInt();
        
        System.out.println("\nQual o numero final?");
        int numeroFinal = entrada.nextInt();
        
        for (int i = numeroInicial; i <= numeroFinal; i++) {
            int numeroTabuada = numeroEscolhido * i;
            System.out.println(numeroEscolhido + " x " + i + " = " + numeroTabuada);
        }
    }
    
}
