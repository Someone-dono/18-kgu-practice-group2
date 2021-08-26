package ru.javabegin.training.hibernate;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import ru.javabegin.training.hibernate.entity.Category;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class CategoryHelp {
    private SessionFactory sessionFactory;

    public CategoryHelp() {sessionFactory = HibernateUtil.getSessionFactory();}

    public List<Category> getCategoryList(){
        Session session = sessionFactory.openSession();

        session.get(Category.class, 1L);

        CriteriaBuilder cb = session.getCriteriaBuilder();

        CriteriaQuery cq = cb.createQuery(Category.class);

        Root<Category> root = cq.from(Category.class);

        cq.select(root);

        Query query = (Query) session.createQuery(cq);

        List<Category> categoryList= query.getResultList();

        session.close();

        return categoryList;
    }

    public Category getCategory(String name){return null;}
}
