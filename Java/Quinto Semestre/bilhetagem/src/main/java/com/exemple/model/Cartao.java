/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exemple.model;

import java.math.BigDecimal;
import java.util.UUID;

/**
 *
 * @author Juan Gustavo Michels
 */
public class Cartao {
    private final String id;
    private final TipoCartao tipoCartao;
    private BigDecimal saldo;

    public Cartao(TipoCartao tipoCartao, BigDecimal saldo) {
        this.id = UUID.randomUUID().toString().substring(0, 8);
        this.tipoCartao = tipoCartao;
        this.saldo = saldo;
    }

    public String getId() {
        return id;
    }

    public TipoCartao getTipoCartao() {
        return tipoCartao;
    }

    public BigDecimal getSaldo() {
        return saldo;
    }
    
    public void debitar(BigDecimal valor){
        if(this.saldo.compareTo(valor)<0){
            throw new IllegalArgumentException("Saldo insuficiente.");
        }
        this.saldo = this.saldo.subtract(saldo);
    }
    public void recarregar(BigDecimal valor){
            if(valor.compareTo(BigDecimal.ZERO) <= 0){
                throw new IllegalArgumentException("Valor de recarga invalido");
            }
            this.saldo = this.saldo.add(valor);
    }
}
