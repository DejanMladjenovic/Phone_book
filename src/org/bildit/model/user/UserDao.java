package org.bildit.model.user;

import org.bildit.model.hibernate.HibernateUtilities;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class UserDao {
	
	SessionFactory sessionFactory = HibernateUtilities.getsessionFactory();
	Session session;
	
	public boolean createUser(User user) {
		
		session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(user);
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
	
	public User readUser(String username) {
		
		User user = null;
		session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("select u from User as u where u.username=:username")
		            .setParameter("username", username); 
			user = (User) query.uniqueResult();
			session.getTransaction().commit();
			return  user;
		} catch (HibernateException he) {
			System.out.println("Error");
			session.getTransaction().rollback();
			return null;
		} finally {
			session.close();
		}
		
	}
	
	public boolean updateUser(User user) {
		
		session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			User loadedUser = (User) session.get(User.class, user.getId());
			user = loadedUser;
			session.update(user);
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
