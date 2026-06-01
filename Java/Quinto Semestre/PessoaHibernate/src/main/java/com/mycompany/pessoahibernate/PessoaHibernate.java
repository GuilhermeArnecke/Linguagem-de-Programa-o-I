package com.mycompany.pessoahibernate;

import java.util.LinkedList;
import java.util.List;

public class PessoaHibernate {

    public static void main(String[] args) {
        PessoaDAO pessoaDAO = new PessoaDAO();
        
        Pessoa ps = new Pessoa();
        ps.setNome("Guilherme");
        ps.setIdade(20);
        ps.setSexo("Só com o Erivelton");
        ps.setEnderecos(new LinkedList<>());
        
        Endereco end1 = new Endereco();
        end1.setPessoa(ps);
        end1.setRua("Rua do Erivelton");
        end1.setTelefone("4999999999");
        ps.getEnderecos().add(end1);
        
        Endereco end2 = new Endereco();
        end2.setPessoa(ps);
        end2.setRua("Rua do end2");
        end2.setTelefone("4988888888");
        ps.getEnderecos().add(end1);
        
        pessoaDAO.salvar(ps);
        
        List<Pessoa> pessoas = pessoaDAO.listar();
        for (Pessoa pessoa : pessoas) {
            System.out.println("ID: " + pessoa.getId());
            System.out.println("Nome: " + pessoa.getNome());
            System.out.println(", Idade: " + pessoa.getIdade());
            System.out.println(", Sexo: " + pessoa.getSexo());
            for (Endereco end : pessoa.getEnderecos()) {
                System.out.println("Rua: " + end.getRua());
                System.out.println(", Telefone: " + end.getTelefone());
            }
        }
    }
}
