package com.mycompany.pessoahibernate;

import java.util.List;

public class PessoaHibernate {

    public static void main(String[] args) {
        PessoaDAO pessoaDAO = new PessoaDAO();
        
        Pessoa ps = new Pessoa("Guilherme Arnecke", 19);
        pessoaDAO.salvar(ps);
        
        List<Pessoa> pessoas = pessoaDAO.listar();
        for (Pessoa pessoa : pessoas) {
            System.out.println("ID: " + pessoa.getId());
            System.out.println("Nome: " + pessoa.getNome());
            System.out.println(", Idade: " + pessoa.getIdade());
        }
    }
}
