package com.panasonic.drms.audit.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;

import com.panasonic.drms.audit.model.AuditDetail;

public class AuditDAOImpl implements AuditDAO {

	private SessionFactory sessionFactory;


	public List<AuditDetail> findRecentAudits() {
		List<AuditDetail> auditList = new ArrayList<AuditDetail>();
		auditList = getSessionFactory().getCurrentSession().createQuery("from AuditDetail order by statusChangeTime").list();
		return auditList;
	}

	public List<AuditDetail> findByDateRange(String date1, String date2){
		return null;		
	}

	public List<AuditDetail> findByKeyword(String date){
		return null;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}