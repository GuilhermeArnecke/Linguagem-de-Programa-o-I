package monitoramentodatacenter;

import java.util.Scanner;

public class MonitoramentoDatacenter {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int totalSalas = 3;
        int totalSensores = 4;
        
        double[][] temperaturas = new double[totalSalas][totalSensores];
        
        double linhaSeguranca = 25.0;
        
        System.out.println("==Sistema de Monitoramento==");
        
        for (int sala = 0; sala < totalSalas; sala++) {
            System.out.println("\n-> Coletando dados da SALA "
                            + (sala + 1) + ": ");
            for (int sensor = 0; sensor < totalSensores; sensor++) {
                System.out.print("Digite a temperatira do Senhor#"
                + (sensor + 1) + " (C): ");
                
                temperaturas[sala][sensor] = entrada.nextDouble();
            }
        }
        System.out.println("\n================================");
        System.out.println("   Relatorio de analise termica   ");
        System.out.println("\n================================");
        
        for (int sala = 0; sala < totalSalas; sala++) {
            double somaSala = 0;
            System.out.print("Sala " + (sala + 1) + " [");
            for (int sensor = 0; sensor < totalSensores; sensor++) {
                System.out.printf("%.1f C ", temperaturas[sala][sensor]);
                somaSala += temperaturas[sala][sensor];
                
            }
            double media = somaSala / totalSensores;
            System.out.printf("] -> Media: %.1f C\n", media);
            if (media > linhaSeguranca) {
                System.out.println(" ALERTA CRITICO:"
                                + " Superaquecimento detectado na sala "
                                + (sala + 1) + "!");
            } else {
                System.out.println( "Status: Temperatura dentro do padrao!");
            }
        }
        
    }
}
