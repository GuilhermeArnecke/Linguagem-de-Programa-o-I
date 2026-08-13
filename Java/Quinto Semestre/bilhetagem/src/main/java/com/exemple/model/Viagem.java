/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Record.java to edit this template
 */
package com.exemple.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 *
 * @author Juan Gustavo Michels
 */
public record Viagem(
        String idCartao,
        String linhaOnibus,
        BigDecimal valorPago,
        LocalDateTime dataHora) {

}

