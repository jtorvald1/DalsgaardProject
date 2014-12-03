/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SessionBean;

import Model.Customer;
import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Torvald
 */
@Stateless
public class CustomerFacade extends AbstractFacade<Customer> {
    @PersistenceContext(unitName = "DalsgaardPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerFacade() {
        super(Customer.class);
    }
    
        public Object findByPassword(String email, String password)
    {
        Query query = em.createNamedQuery("Customer.findByPassword");
        query.setParameter("email", email);
        query.setParameter("password", password);
        Object customer = query.getSingleResult();
        
        return customer;
    }
        
        public Object findByUserName(String username) {
            Query query = em.createNamedQuery("Customer.findByUserName");
            query.setParameter("username", username);
            Object user = query.getSingleResult();
            
            return user;
        }
        
        public Collection<Customer> findAllUsers()
        {
        Query query = em.createNamedQuery("Customer.findAllUsers");
        Collection<Customer> users = query.getResultList();
        
        return users;
        }
}