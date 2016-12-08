package org.bildit.model.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtilities {

	private static SessionFactory sessionFactory;
	private static StandardServiceRegistry serviceRegistry;
	
	static {
		try {
			Configuration configuration = new Configuration().configure();
			sessionFactory = configuration.buildSessionFactory();
			
			serviceRegistry = 
					new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
			sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		} catch (HibernateException he) {
			System.out.println("Problem creating session factory!");
			he.printStackTrace();
		}
	}
	
	public static SessionFactory getsessionFactory() {
		return sessionFactory;
	}
}
