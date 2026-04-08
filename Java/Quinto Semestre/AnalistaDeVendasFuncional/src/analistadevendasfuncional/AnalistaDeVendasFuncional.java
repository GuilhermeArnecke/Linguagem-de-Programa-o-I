package analistadevendasfuncional;

import java.util.*;
import java.util.stream.Collectors;

public class AnalistaDeVendasFuncional {
    public static void main(String[] args) {
        
        List<Venda> vendas = Arrays.asList(
            new Venda("Notebook da Xuxa", 3500.00, "Eletronicos"),
            new Venda("Geladeira Eletrolux", 80.00, "Eletronicos"),
            new Venda("Estatua do Neymar", 700.00, "Moveis"),
            new Venda("Cama para gato", 1200.00, "Moveis"),
            new Venda("Nokia", 2500.00, "Eletronicos"),
            new Venda("Meta Quest 3s", 300.00, "Eletronicos")
        );

        List<String> produtosFiltrados = vendas.stream()
            .filter(el -> el.getValor() > 500)
            .map(Venda::getProduto)
            .sorted()
            .collect(Collectors.toList());

        System.out.println("Produtos filtrados e ordenados:");
        produtosFiltrados.forEach(System.out::println);

        double totalEletronicos = vendas.stream()
            .filter(el -> el.getCategoria().equalsIgnoreCase("Eletronicos"))
            .mapToDouble(Venda::getValor)
            .sum();

        System.out.println("\nTotal de vendas (Eletronicos): R$ " + totalEletronicos);
        
    }
}
