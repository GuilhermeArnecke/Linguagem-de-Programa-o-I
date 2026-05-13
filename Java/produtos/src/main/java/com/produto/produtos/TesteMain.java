package com.produto.produtos;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class TesteMain {

    public static void main(String[] args) {
        try {
            HttpClient cliente = HttpClient.newHttpClient();
            
            String json = "{\"id\":2, \"nome\": \"Mouse\", \"preco\": 50.0}";
            
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create("http://localhost:8080/produtos"))
                    .header("Content-Type", "aplication/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();
            
            HttpResponse<String> response = cliente.send(
                request, HttpResponse.BodyHandlers.ofString());
            
            System.out.println("Status Code: " + response.statusCode());
            System.out.println("Resposta: " + response.body());
            
        } catch(Exception ex) {
            
        }
    }
    
}
