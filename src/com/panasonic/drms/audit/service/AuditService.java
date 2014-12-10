package com.panasonic.drms.audit.service;
import com.panasonic.drms.audit.dao.AuditDAO;
import com.panasonic.drms.audit.model.AuditDetail;
import java.util.List;



public class AuditService {
	AuditDAO auditDAO;
	public List<AuditDetail> getAuditDetails()
	{		  	
		List<AuditDetail> auditList = auditDAO.findRecentAudits();
		return auditList;
	}
	public AuditDAO getAuditDAO() {
		return auditDAO;
	}
	public void setAuditDAO(AuditDAO auditDAO) {
		this.auditDAO = auditDAO;
	}	
}

