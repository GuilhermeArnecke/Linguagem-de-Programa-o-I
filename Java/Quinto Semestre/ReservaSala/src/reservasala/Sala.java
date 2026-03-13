package reservasala;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Sala {
    private int id;
    private String nome;
    private List<Reserva> reservasAtivas = new ArrayList<>();

    public Sala(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }
    
    public boolean estaDisponivel(LocalDateTime inicio, LocalDateTime fim) {
        for (Reserva res : reservasAtivas) {
            if (inicio.isBefore(res.getFim()) && fim.isAfter(res.getInicio())) {
                return false;
            }
        }
        return true;
    }
    
    public void adicionarReserva(Reserva reserva) {
        this.reservasAtivas.add(reserva);
    }
    
    public void removerReserva(Reserva reserva) {
        this.reservasAtivas.remove(reserva);
    }
}
