package com.riglesoft.users.service;

import java.util.List;

import com.riglesoft.users.dao.BatteryReportDao;
import com.riglesoft.users.model.BatteryReport;

public class BatteryReportService {
	BatteryReportDao brDao;
	public List<BatteryReport> getBatteryReport(String date)
	{		  
		List<BatteryReport> brList = brDao.findByMkrDate(date);
		return brList;
	}
	public BatteryReportDao getBrDao() {
		return brDao;
	}
	public void setBrDao(BatteryReportDao brDao) {
		this.brDao = brDao;
	}

}
