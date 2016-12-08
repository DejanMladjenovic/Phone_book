package org.bildit.model.contact;

import org.bildit.model.hibernate.HibernateUtilities;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class ContactDao {
	
	SessionFactory sessionFactory = HibernateUtilities.getsessionFactory();
	Session session;
	
	public boolean createContact(Contact contact) {
		try{
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(contact);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException he) {
			System.out.println("Error");
			session.getTransaction().rollback();
			return false;
		} finally {
			session.close();
		}
	}
	
	

}
