package controleestoque;

import java.util.Scanner;

public class ControleEstoque {
    static int unidades = 50;
    static String nomeProduto = "Teclado";
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean executar = true;
        do {
            System.out.println("""
                               ---Inicio do Turno---
                               Digite:
                               0 para Sair
                               1 para Vender
                               2 para Repor Estoque
                               3 para Exibir Status""");

            int op = sc.nextInt();

                switch (op) {
                    case 0:
                        System.out.println("---Turno finalizado---");
                        executar = false;
                        break;
                    case 1:
                        System.out.println("Informe a quantidade a vender:");
                        int qt = sc.nextInt();
                        processarVenda(qt);
                        break;
                    case 2:
                        System.out.println("Informe a quantidade a repor:");
                        int qtn = sc.nextInt();
                        reporEstoque(qtn);
                        break;
                    case 3:
                        exibirStatus();
                        break;
                    default:
                        System.out.println("Opcao Invalida");
                }
        } while (executar == true);
    }
    
    public static void exibirStatus() {
        System.out.println("Produto " + nomeProduto + " | Em estoque: "
        + unidades);
    }
    
    public static void processarVenda(int quantidade) {
        if (unidades >= quantidade) {
            unidades = unidades - quantidade;
            System.out.println("Venda de " + quantidade
                + " quantidades realizada com sucesso!");
        } else {
            System.out.println("ERRO: Estoque insuficiente para vender "
                + quantidade + " unidades");
        }
    }
    
    public static void reporEstoque(int quantidade) {
        unidades += quantidade;
        System.out.println("Reposicao de " + quantidade
            + " unidades concluidas!");
    }
}
