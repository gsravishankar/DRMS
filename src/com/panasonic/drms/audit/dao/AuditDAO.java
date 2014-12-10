package com.panasonic.drms.audit.dao;

import java.util.List;

import com.panasonic.drms.audit.model.AuditDetail;

public interface AuditDAO {
	public List<AuditDetail> findRecentAudits();
	public List<AuditDetail> findByDateRange(String startDate, String endDate);
	public List<AuditDetail> findByKeyword(String date);
}
