package com.erivelton.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OlaControle {
    
    @GetMapping("/ola")
    public String olaMundo() {
        return "Olá, Eriveita... a seita do Erivelton";
    }
}
