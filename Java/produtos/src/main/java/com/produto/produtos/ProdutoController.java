package com.produto.produtos;

import java.util.ArrayList;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/produtos")
@CrossOrigin(origins = "*")
public class ProdutoController {
    private final List<Produto> bancoDados = new ArrayList<>();
    
    @GetMapping //Listar Todos
    public List <Produto> listarTodos() {
        return bancoDados;
    }
    
    @PostMapping //Cria um novo
    public ResponseEntity<Produto> cadastrar(@RequestBody Produto produto) {
        bancoDados.add(produto);
        //Retorna 201 Created
        return ResponseEntity.status(HttpStatus.CREATED).body(produto);
    }
    
    @GetMapping("/id") //produtos/id
    public ResponseEntity<Produto> buscarPorID(@PathVariable Long id) {
        return bancoDados.stream()
                .filter(p -> p.getId().equals(id))
                .findFirst()
                .map(p -> ResponseEntity.ok(p)) //Retorna 200
                .orElse(ResponseEntity.notFound().build()); //Retorna 404
    }
}
