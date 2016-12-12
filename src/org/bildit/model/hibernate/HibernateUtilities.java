package org.bildit.model.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtilities {

	private static SessionFactory sessionFactory;
	
	static {
		try {
			sessionFactory = new MetadataSources(
					new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build()).buildMetadata()
							.buildSessionFactory();
		} catch (HibernateException he) {
			System.out.println("Problem creating session factory!");
			he.printStackTrace();
		}
	}
	
	public static SessionFactory getsessionFactory() {
		return sessionFactory;
	}
}
