package reservasala;

import java.time.LocalDateTime;

public class Reserva {
    private int id;
    private Usuario usuario;
    private Sala sala;
    private LocalDateTime inicio;
    private LocalDateTime fim;
    private boolean ativa;

    public Reserva(int id, Usuario usuario, Sala sala, LocalDateTime inicio, LocalDateTime fim) {
        if (!sala.estaDisponivel(inicio, fim)) {
            throw new RuntimeException("Sala indisponivel para esse periodo");
        }
        this.id = id;
        this.usuario = usuario;
        this.sala = sala;
        this.inicio = inicio;
        this.fim = fim;
        this.ativa = true;
        sala.adicionarReserva(this);
    }

    public void cancelar() {
        this.ativa = false;
        this.sala.removerReserva(this);
        System.out.println("Reserva " + id + " cancelada!");
    }
            
    public LocalDateTime getInicio() {
        return inicio;
    }

    public void setInicio(LocalDateTime inicio) {
        this.inicio = inicio;
    }

    public LocalDateTime getFim() {
        return fim;
    }

    public void setFim(LocalDateTime fim) {
        this.fim = fim;
    }
}
