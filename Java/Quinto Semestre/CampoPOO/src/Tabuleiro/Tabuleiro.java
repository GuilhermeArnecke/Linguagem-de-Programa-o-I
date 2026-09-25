package Tabuleiro;


import java.util.Random;

public class Tabuleiro {

    private final int linhas;
    private final int colunas;
    private final char[][] mapaVisivel;
    private final boolean[][] mapaBombas;
    private final int totalAcertosNecessarios;
    private int acertosAtuais;

    public Tabuleiro(int linhas, int colunas) {
        this.linhas = linhas;
        this.colunas = colunas;
        this.mapaVisivel = new char[linhas][colunas];
        this.mapaBombas = new boolean[linhas][colunas];
        this.acertosAtuais = 0;
        this.totalAcertosNecessarios = (linhas * colunas) - 2;
        inicializarMapas();
    }

    private void inicializarMapas() {
        for (int l = 0; l < this.linhas; l++) {
            for (int c = 0; c < this.colunas; c++) {
                this.mapaVisivel[l][c] = '-';
            }
        }
        Random random = new Random();
        this.mapaBombas[random.nextInt(linhas)][random.nextInt(colunas)] = true;
        this.mapaBombas[random.nextInt(linhas)][random.nextInt(colunas)] = true;
    }

    public void exibirTabuleiro(boolean revelaBombas) {
        System.out.println("\n 0 1 2 (Colunas)");
        for (int l = 0; l < this.linhas; l++) {
            System.out.print(l + " [ ");
            for (int c = 0; c < this.colunas; c++) {
                if (revelaBombas && mapaBombas[l][c]) {
                    System.out.print("* ");
                } else {
                    System.out.print(mapaVisivel[l][c] + " ");
                }
            }
            System.out.println("]");
        }
    }

    public boolean coordenadasValidas(int l, int c) {
        return (l >= 0 && l < linhas && c >= 0 && c < colunas);
    }

    public boolean posicaoRevelada(int l, int c) {
        return mapaVisivel[l][c] == 'V';
    }

    public boolean jogadorVenceu() {
        return acertosAtuais == totalAcertosNecessarios;
    }

    public boolean recebeuExplosao(int l, int c) {
        if (mapaBombas[l][c]) {
            return true;
        }
        mapaVisivel[l][c] = 'V';
        acertosAtuais++;
        return false;
    }
}