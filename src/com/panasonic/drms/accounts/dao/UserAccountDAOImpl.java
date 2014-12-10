package com.panasonic.drms.accounts.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.panasonic.drms.accounts.model.UserAccount;

public class UserAccountDAOImpl implements UserAccountDAO{

	private SessionFactory sessionFactory;
	
	public List<UserAccount> getUserList() {
		List<UserAccount> accountList = new ArrayList<UserAccount>();
		accountList = getSessionFactory().getCurrentSession().createQuery("from UserAccount order by userName").list();
		return accountList;
	}
	
	public String createUser(UserAccount uAccount){
		
		Session session = null;
		Transaction tx = null;
		String userName = "";		
		
		try{
			session = getSessionFactory().getCurrentSession();
			tx=session.getTransaction();
			System.out.println(session.save(uAccount).getClass().getName());
			tx.commit();
			
		}catch(HibernateException e){
			if(tx!=null) tx.rollback();
			e.printStackTrace();			
		}finally{
			session.close();
		}
		
		return userName;
		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


}








