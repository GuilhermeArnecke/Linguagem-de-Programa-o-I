package cinemax;

import java.util.Scanner;

public class Cinemax {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        char[][] assentos = new char[5][5];
        boolean executando = true;
        for (int l = 0; l < 5; l++) {
            for (int c = 0; c < 5; c++) {
                assentos[l][c] = 'o';
            }
        }
        System.out.println("===BEM VINDO AO CINE-JAVA");
        while (executando) {
            System.out.println("\n---Mapa atual (o = Livre, x = Ocupado)---");
            System.out.println("   0 1 2 3 4 (Colunas)");
            for (int l = 0; l < 5; l++) {
                System.out.println(l + " | ");//exibi o num linha
                for (int c = 0; c < 5; c++) {
                    System.out.print(assentos[l][c] + " ");
                }
                System.out.println();
            }
            System.out.print("\nDigite a Linha para reservar (0 a 4)"
                            + " ou -1 para SAIR");
            int linhaDesejada = entrada.nextInt();
            if (linhaDesejada == -1) {
                executando = false;
                System.out.println("Encerrando o sistema do cinema.");
                break;
            }
            System.out.print("Digite a COLUNA para reservar (0 a 4): ");
            int colunaDesejada = entrada.nextInt();
            
            if (linhaDesejada < 0 
                            || linhaDesejada > 4
                            || colunaDesejada < 0
                            || colunaDesejada > 4) {
                System.out.println("ERRO: Posicao invalida!"
                                + " Escolha numeros de 0 a 4");
                continue;
            }
            if (assentos[linhaDesejada][colunaDesejada] == 'x') {
                System.out.println("Atencao: Este assento ja esta ocupado");
            } else {
                assentos[linhaDesejada][colunaDesejada] = 'x';
                System.out.println("Assento reservado com sucesso");
            }
        }
        entrada.close();
    }
    
}
