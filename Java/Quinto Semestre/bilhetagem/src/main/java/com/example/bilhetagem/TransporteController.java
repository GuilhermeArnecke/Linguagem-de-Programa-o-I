package com.example.bilhetagem;

import com.exemple.model.Cartao;
import com.exemple.model.TipoCartao;
import com.exemple.model.Viagem;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author guilh
 */
@RestController
@RequestMapping("/api/transporte")
public class TransporteController {
    private final TransporteService service;
    
    public TransporteController(TransporteService service) {
        this.service = service;
    }
    
    @GetMapping("/cartoes")
    public ResponseEntity<Collection<Cartao>> obterCartao() {
        return ResponseEntity.ok(service.listarCartoes());
    }
    
    @PostMapping("/embarque")
    public ResponseEntity<Viagem> registrarEmbarque(
    @RequestParam String idCartao, @RequestParam String linha) {
        try {
            Viagem viagem = service.processarEmbarque(idCartao, linha);
            return ResponseEntity.ok(viagem);
        } catch (Exception e) {
            return ResponseEntity.badRequest().header("Erro", 
                    e.getMessage()).build();
        }
    }
    
    @PostMapping("/simular-massa")
    public CompletableFuture<ResponseEntity<String>> processarMassa(
    @RequestParam String linha,
            @RequestBody List<String> idsCartoes) {
        return service.simularCargaEmbarqueAssincronos(
                linha, idsCartoes)
                .thenApply(ResponseEntity::ok);
    }
    
    @GetMapping("/relatorios/faturamento")
    public ResponseEntity<BigDecimal> getFaturamento() {
       return ResponseEntity.ok(service.calcularFaturaTotal());
    }
    
    @GetMapping("/relatorios/linhas")
    public ResponseEntity<Map<String, Long>> getEstatisticaLinhas() {
        return ResponseEntity.ok(service.obterContagemViagensPorLinha());
    }
    
    @GetMapping("/relatorios/tipo-cartao/{tipo}")
    public ResponseEntity<List<Viagem>> getViagensPorTipoLinha(
         @PathVariable TipoCartao tipoCartao) {
            return ResponseEntity.ok(
                        service.listarViagensPorTippCartao(tipoCartao));
    }
}
