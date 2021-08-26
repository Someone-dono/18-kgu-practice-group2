package ru.javabegin.training.hibernate;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import ru.javabegin.training.hibernate.entity.Catalog;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;


public class CatalogHelp {
    private SessionFactory sessionFactory;

    public CatalogHelp() {sessionFactory = HibernateUtil.getSessionFactory();}

    public List<Catalog> getCategoryList(){
        Session session = sessionFactory.openSession();

        session.get(Catalog.class, 1L);

        CriteriaBuilder cb = session.getCriteriaBuilder();

        CriteriaQuery cq = cb.createQuery(Catalog.class);

        Root<Catalog> root = cq.from(Catalog.class);

        cq.select(root);

        Query query = (Query) session.createQuery(cq);

        List<Catalog> categoryList= query.getResultList();

        session.close();

        return categoryList;
    }

    public Catalog getCategory(String name){return null;}
}
