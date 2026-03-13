package reservasala;

import java.time.LocalDateTime;

public class ReservaSala {

    public static void main(String[] args) {
        Usuario usuCarlos = new Usuario(1, "Carlos");
        Usuario usuAna = new Usuario(2, "Ana");
        Sala salaReuniao = new Sala(1, "Sala Reuniao");
        
        LocalDateTime inicio = LocalDateTime.now().withHour(14).withMinute(0);
        LocalDateTime fim = LocalDateTime.now().withHour(15).withMinute(0);
        
        try {
            System.out.println("Tentando a primeira reserva...");
            Reserva reserva1 = new Reserva(0, usuCarlos, salaReuniao, inicio, fim);
            System.out.println("Reserva confirmada para... " + usuCarlos.getNome());

            System.out.println("Tentando a segunda reserva...");
            Reserva reserva2 = new Reserva(1, usuAna, salaReuniao, inicio, fim);
            System.out.println("Reserva confirmada para... " + usuAna.getNome());
        } catch(RuntimeException e) {
            System.err.println(e.getMessage());
        }
    }    
}
