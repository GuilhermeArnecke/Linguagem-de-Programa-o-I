/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.testeapi;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

/**
 *
 * @author Juan Gustavo Michels
 */
public class TesteAPI {

    public static void main(String[] args) throws IOException {
    HttpClient cliente = HttpClient.newHttpClient();
        String cepDesejado = "89870000";
        HttpRequest request = HttpRequest.newBuilder().uri(URI.create("https://brasilapi.com.br/api/cep/v1/" + cepDesejado)).GET().build();
    
        try {
            HttpResponse<String> resposta = cliente.send(request, 
                    HttpResponse.BodyHandlers.ofString());
            
            System.out.println("Status: " + resposta.statusCode());
            System.out.println("Conteúdo: " + resposta.body());
        } catch (InterruptedException ex) {
            System.getLogger(TesteAPI.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
}
