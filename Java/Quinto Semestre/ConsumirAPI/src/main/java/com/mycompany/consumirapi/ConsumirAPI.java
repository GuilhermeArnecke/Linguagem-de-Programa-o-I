package com.mycompany.consumirapi;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class ConsumirAPI {

    public static void main(String[] args) throws IOException {
        HttpClient cliente = HttpClient.newHttpClient();
        
        HttpRequest request = HttpRequest.newBuilder().uri(URI.create("http://localhost:8080/ola")).GET().build();
    
        try {
            HttpResponse<String> resposta = cliente.send(request, 
                    HttpResponse.BodyHandlers.ofString());
            
            System.out.println("Status: " + resposta.statusCode());
            System.out.println("Conteúdo: " + resposta.body());
        } catch (InterruptedException ex) {
            System.getLogger(ConsumirAPI.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
}
