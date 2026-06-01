package com.mycompany.pessoahibernate;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.List;

public class PessoaDAO {
    
    private final EntityManagerFactory factory = 
            Persistence.createEntityManagerFactory("persistence");
    
    public void salvar(Pessoa pessoa) {
        try (EntityManager em = factory.createEntityManager()) {
            em.getTransaction().begin();
            em.persist(pessoa);
            em.getTransaction().commit();
        }
    }
    
    public List<Pessoa> listar() {
        List<Pessoa> lista;
        try (EntityManager em = factory.createEntityManager()) {
            lista = em.createQuery("SELECT p FROM Pessoa p", Pessoa.class)
                    .getResultList();
        }
        return lista;
    }
}
