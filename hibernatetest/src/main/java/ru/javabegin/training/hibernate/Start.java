package ru.javabegin.training.hibernate;

import org.hibernate.Session;

public class Start {


    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        System.out.println(new CategoryHelp().getCategoryList());
    }
}