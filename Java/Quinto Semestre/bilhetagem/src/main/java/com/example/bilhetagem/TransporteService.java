package com.example.bilhetagem;

import com.exemple.model.Cartao;
import com.exemple.model.TipoCartao;
import com.exemple.model.Viagem;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.stream.Collectors;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

/**
 *
 * @author Guilherme Arnecke
 */
@Service
public class TransporteService {
        private final BigDecimal TARIFA_BASE = new BigDecimal("5.00");
        //Colecao thread-safe par o paradigma concorrente em memoria
        private final Map<String, Cartao> bancoDadosCartoes =
                new ConcurrentHashMap<>();
        private final List<Viagem> historicoViagens = new CopyOnWriteArrayList<>();
        
        public TransporteService(){
            Cartao c1 = new Cartao(TipoCartao.ESTUDANTE, new BigDecimal("20.00"));
            Cartao c2 = new Cartao(TipoCartao.COMUM, new BigDecimal("50.00"));
            Cartao c3 = new Cartao(TipoCartao.IDOSO, new BigDecimal("10.00"));
            
            bancoDadosCartoes.put(c1.getId(), c1);
            bancoDadosCartoes.put(c2.getId(), c2);
            bancoDadosCartoes.put(c3.getId(), c3);
    }
        public Collection<Cartao> listarCartoes(){
            return bancoDadosCartoes.values();
        }
        //paradigma concorrente
        public synchronized Viagem processarEmbarque(String idCartao, String linha){
            Cartao cartao = bancoDadosCartoes.get(idCartao);
            if(cartao == null) throw new NoSuchElementException("Cartao nao encontrado");
            
            BigDecimal valorTarifa = cartao.getTipoCartao().calcularTarifa(TARIFA_BASE);
            cartao.debitar(valorTarifa);
            
            Viagem viagem = new Viagem(idCartao, linha, valorTarifa, LocalDateTime.now());
            
            historicoViagens.add(viagem);
            return viagem;
        }
        
        //Paradigma assincrono
        @Async
        public CompletableFuture<String> simularCargaEmbarqueAssincronos(
        String linha, List<String> idsCartoes){
            long falhas = idsCartoes.stream().map(id -> {
                try{
                    processarEmbarque(id, linha);
                    return true;
                } catch (Exception e){
                    return false;
                }
            }).filter(sucesso -> !sucesso).count();
            
            String resultado = "Processamento concluida para a linha "
                    + linha + ". Sucessos: "
                    + (idsCartoes.size() - falhas)
                    + ", Falhas: " + falhas;
            return CompletableFuture.completedFuture(resultado);
        }
        
        public BigDecimal calcularFaturaTotal() {
            return historicoViagens.stream()
		.map(Viagem :: valorPago)
		.reduce(BigDecimal.ZERO, BigDecimal::add);
        }

        public Map<String, Long> obterContagemViagensPorLinha() {
            return historicoViagens.stream()
		.collect(Collectors.groupingBy(Viagem::linhaOnibus,
                    Collectors.counting()));
        }

        public List<Viagem> listarViagensPorTippCartao(TipoCartao tipoCartao) {
            return historicoViagens.stream()
                    .filter(viagem -> {
                        Cartao c = bancoDadosCartoes.get(
                            viagem.idCartao());
                        return c != null && c.getTipoCartao() == tipoCartao;
                    }).toList();
        }
}
        
