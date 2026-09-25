package campopoo;

import Tabuleiro.Tabuleiro;
import java.util.Scanner;

public class CampoPOO {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        Tabuleiro tabuleiro = new Tabuleiro(3, 3);
        
        boolean jogoAtivo = true;
        System.out.println("=== Campo minado ===");
        System.out.println("Encontre as posicoes seguras no tabuleiro");
        
        while(jogoAtivo) {
            tabuleiro.exibirTabuleiro(false);
            
            System.out.print("\nDigite a Linha:");
            int linha = entrada.nextInt();
            System.out.print("\nDigite a Coluna:");
            int coluna = entrada.nextInt();
            
            if (!tabuleiro.coordenadasValidas(linha, coluna)) {
                System.out.println("Erro: Coordenadas fora do mapa!");
                continue;
            }
            
            if (tabuleiro.posicaoRevelada(linha, coluna)) {
                System.out.println("Essa area ja foi clicada!");
                continue;
            }
            
            if (tabuleiro.recebeuExplosao(linha, coluna)) {
                jogoAtivo = false;
                System.out.printf("\nBOOM!! Voce explodiu na posicao [%d]"
                                + " [%d]!\n", linha, coluna);
                System.out.println("GAME OVER!");
            } else {
                System.out.println("Posicao Segura");
                if (tabuleiro.jogadorVenceu()) {
                    jogoAtivo = false;
                    System.out.println("\nParabens! Voce venceu!");
                }
            }
         }
    }
    
}
