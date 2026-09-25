package campominado;

import java.util.Scanner;

public class CampoMinado {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        char[][] campos = new char[3][3];
        boolean[][] bombas = new boolean[3][3];
        boolean fimDeJogo = true;
        int contadorViroria = 0;
        
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                campos[i][j] = '-';
            }
        }
        
        for (int i = 0; i < 2; ) {
            int j = (int) (Math.random() * 3);
            int k = (int) (Math.random() * 3);
            
            if (!bombas[j][k]) {
                bombas[j][k] = true;
                i++; 
            }
        }
        
        System.out.println("===BEM VINDO AO CAMPO MINADO===");
        
        while (fimDeJogo) {
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 3; j++) {
                    System.out.print(campos[i][j] + " ");
                }
                System.out.println();
            }
            
            System.out.print("\nEscolha uma LINHA de 1 a 3: ");
            int linhaEscolha = entrada.nextInt();
            linhaEscolha--;
            System.out.print("\nEscolha uma COLUNA de 1 a 3: ");
            int colunaEscolha = entrada.nextInt();
            colunaEscolha--;
            
            if (linhaEscolha < 0 
                    || linhaEscolha > 2
                    || colunaEscolha < 0
                    || colunaEscolha > 2) {
                System.out.println("ERRO: Posicao invalida! Escolha numeros de 1 a 3");
                continue;
            }
            
            if (bombas[linhaEscolha][colunaEscolha] == true) {
                System.out.println("KABUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUM");
                System.out.println("Voce explodiu uma bomba, fim de jogo....");
                fimDeJogo = false;
                break;
            }
            
            if (campos[linhaEscolha][colunaEscolha] != '-') { 
                System.out.println("Atencao: Este campo ja foi revelado");
            } else {
                campos[linhaEscolha][colunaEscolha] = 'x';
                contadorViroria++;
                
                
                if (contadorViroria == 7) {
                    System.out.println("Voce revelou um campo seguro");
                    System.out.println("VOCE VENCEU!!!!!!!!!!!");
                    fimDeJogo = false;
                } else {
                    System.out.println("Voce revelou um campo seguro");
                }
            }		
        }
        entrada.close();
    }
    
}
		