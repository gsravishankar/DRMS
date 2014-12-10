package com.riglesoft.users.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;

import com.riglesoft.users.model.BatteryReport;

public class BatteryReportDaoImpl implements BatteryReportDao {

	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<BatteryReport> findByMkrDate(String date) {

		List<BatteryReport> brList = new ArrayList<BatteryReport>();
		System.out.println("date : " + date);
		brList = getSessionFactory().getCurrentSession().createQuery("from BatteryReport order by mkrDate").list();
		//where mkrDate like ? 
			//	.setParameter(0, (date + "%")).list();

		return brList;

		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}