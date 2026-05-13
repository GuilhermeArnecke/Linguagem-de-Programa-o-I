package com.mycompany.pessoahibernate;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class PessoaDAO {
    private SessionFactory factory = new 
        Configuration().configure().buildSessionFactory();
    
    public void salvar(Pessoa pessoa) {
        Session s = factory.openSession();
        s.beginTransaction();
        s.persist(pessoa);
        s.getTransaction().commit();
        s.close();
    }
    
    public List<Pessoa> listar(){
        List<Pessoa> lista;
        try (Session s = factory.openSession()) {
            lista = s.createQuery("from Pessoa", 
                Pessoa.class).list();
        }
        return lista;
    }
}
