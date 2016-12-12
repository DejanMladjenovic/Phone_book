package org.bildit.model.contact;

import java.util.ArrayList;
import java.util.List;

import org.bildit.model.hibernate.HibernateUtilities;
import org.bildit.model.user.User;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class ContactDao {
	
	SessionFactory sessionFactory = HibernateUtilities.getsessionFactory();
	Session session;
	
	public boolean createContact(Contact contact) {
		session = sessionFactory.openSession();
		try{
			session.beginTransaction();
			session.save(contact);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException he) {
			System.out.println("Error create contact");
			session.getTransaction().rollback();
			return false;
		} finally {
			session.close();
		}
	}
	
	public List<Contact> readAll () {
		List<Contact> contacts = new ArrayList<>();
		session = sessionFactory.openSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery("from Contact");
			contacts = query.list();
			session.getTransaction().commit();
		} catch (HibernateException he) {
			System.out.println("Error read contacts");
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return contacts;
	}
	
	public List<Contact> readMatchedContacts (String match) {
		List<Contact> contacts = new ArrayList<>();
		session = sessionFactory.openSession();
		try{
			session.beginTransaction();
			Criteria criteria = session.createCriteria(Contact.class)
					.add(Restrictions.or(
							Restrictions.ilike("firstName", '%' + match + '%'),
							Restrictions.ilike("lastName", '%' + match + '%')));
			contacts = criteria.list();
			session.getTransaction().commit();
		} catch (HibernateException he) {
			System.out.println("Error read contacts");
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return contacts;
	}
	
	public Contact readContactById(int id) {
		
		Contact contact = null;
		session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("select c from Contact as c where c.id=:id")
		            .setParameter("id", id); 
			contact = (Contact) query.uniqueResult();
			session.getTransaction().commit();
			return  contact;
		} catch (HibernateException he) {
			System.out.println("Error");
			session.getTransaction().rollback();
			return null;
		} finally {
			session.close();
		}
		
	}
	
	public boolean updateContact(Contact contact) {
		session = sessionFactory.openSession();
		try{
			session.beginTransaction();
			session.update(contact);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException he) {
			System.out.println("Error update contact");
			session.getTransaction().rollback();
			return false;
		} finally {
			session.close();
		}
	}
	
	public boolean deleteContact(int id) {
		session = sessionFactory.openSession();
		Contact contact = new Contact();
		contact.setId(id);
		try{
			session.beginTransaction();
			session.delete(contact);
			session.getTransaction().commit();
			return true;
		} catch (HibernateException he) {
			System.out.println("Error create contact");
			session.getTransaction().rollback();
			return false;
		} finally {
			session.close();
		}
	}

}
