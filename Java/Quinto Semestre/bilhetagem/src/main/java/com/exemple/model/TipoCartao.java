/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Enum.java to edit this template
 */
package com.exemple.model;

import java.math.BigDecimal;

/**
 *
 * @author Juan Gustavo Michels
 */
public enum TipoCartao {   
    ESTUDANTE{
        @Override
        public BigDecimal calcularTarifa(BigDecimal tarifaBase){
            return tarifaBase.multiply(new BigDecimal("0.50"));
        }
    },   
    IDOSO{
        @Override
        public BigDecimal calcularTarifa(BigDecimal tarifaBase){
            return BigDecimal.ZERO;
        }
    },
    COMUM{
        @Override
        public BigDecimal calcularTarifa(BigDecimal tarifaBase){
            return tarifaBase;
        }
    };
    public abstract BigDecimal calcularTarifa(BigDecimal tarifabase);
}
