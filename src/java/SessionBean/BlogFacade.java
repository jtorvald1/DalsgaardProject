/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SessionBean;

import Model.News.Blog;
import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless
public class BlogFacade extends AbstractFacade<Blog> {
    @PersistenceContext(unitName = "DalsgaardPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BlogFacade() {
        super(Blog.class);
    }

    public Collection<Blog> AllBlogs()
    {
        Query query = em.createNamedQuery("Blog.AllBlogs");
        Collection<Blog> blogs = query.getResultList();
        
        return blogs;
    }
}
