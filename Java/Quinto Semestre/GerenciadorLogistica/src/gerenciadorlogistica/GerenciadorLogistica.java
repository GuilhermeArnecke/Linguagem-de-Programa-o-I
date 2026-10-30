package gerenciadorlogistica;

import java.util.Scanner;

public class GerenciadorLogistica {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        Veiculo[] frota = new Veiculo[4];

        frota[0] = new Veiculo(
                "GIO-6767",
                "Veiculo Giovanni",
                67
        );

        frota[1] = new Caminhao(
                "ERI-6969",
                "Erivelton Vintage",
                69000,
                3
        );

        frota[2] = new Caminhao(
                "MOT-4324",
                "Moto Moto",
                999999,
                9
        );

        frota[3] = new VanEntrega(
                "JOR-5555",
                "Civic Rebaixado",
                100,
                true
        );

        int opcao = 0;

        while (opcao != 3) {

            System.out.println("\n===== SISTEMA LOGISTICO COMPLETO =====");
            System.out.println("1. Listar Frota");
            System.out.println("2. Simular Custo de Viagem");
            System.out.println("3. Sair");
            System.out.print("Escolha uma opcao: ");

            opcao = scanner.nextInt();

            switch (opcao) {

                case 1:

                    System.out.println("\n--- FROTA DA EMPRESA ---");

                    for (int i = 0; i < frota.length; i++) {

                        System.out.println(
                                "Placa: " + frota[i].getPlaca()
                                + " | Modelo: " + frota[i].getModelo()
                                + " | Capacidade: " + frota[i].getCapacidadeCargaKg() + " kg"
                        );
                    }

                    break;

                case 2:

                    System.out.print("\nDigite a distancia da entrega (em Km): ");
                    double distancia = scanner.nextDouble();

                    System.out.println("\n--- SIMULACAO DE CUSTOS DE FRETE ---");

                    for (int i = 0; i < frota.length; i++) {

                        double custo = frota[i].calcularFrete(distancia);

                        System.out.printf(
                                "Placa: %s | Modelo: %s -> Custo: R$ %.2f%n",
                                frota[i].getPlaca(),
                                frota[i].getModelo(),
                                custo
                        );
                    }

                    break;

                case 3:

                    System.out.println("\nSistema encerrado.");

                    break;

                default:

                    System.out.println("\nOpcao invalida!");

                    break;
            }
        }

        scanner.close();
    }
}