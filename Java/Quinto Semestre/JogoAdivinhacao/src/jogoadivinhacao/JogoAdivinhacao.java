package jogoadivinhacao;

import java.util.Random;
import java.util.Scanner;

public class JogoAdivinhacao {
    
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        Random aleatorio = new Random();
        
        int numeroSecreto = aleatorio.nextInt(20) + 1;
        int tentativasMaximas = 5;
        int tentativasFeitas = 0;
        boolean acertou = false;
        
        System.out.println("== JOGO DA ADIVINHACAO ==");
        System.out.println("Tente adivinhar o numero entre 1 e 20. "
                        + "Voce tem 5 chances");
        while(tentativasFeitas < tentativasMaximas && !acertou) {
            tentativasFeitas++;
            System.out.println("\nTentativa " + tentativasFeitas +
                            " de " + tentativasMaximas +
                            ". Digite seu palpite: ");
            int palpite = entrada.nextInt();
            
            if (palpite == numeroSecreto) {
                acertou = true;
            } else if (palpite < numeroSecreto) {
                System.out.println("Muito baixo! Tente um numero maior");
            } else {
                System.out.println("Muito alto! Tente um numero menor");
            }
            System.out.println("\n== FIM DE JOGO ==");
            if (acertou) {
                System.out.println("Parabéns! Você acertou em "
                                + tentativasFeitas + " tentativas.");
            } else {
                System.out.println("Que pena! Suas chances acabaram."
                                + " O numero era: " + numeroSecreto);
            }
            entrada.close();
        }
    }
    
}
