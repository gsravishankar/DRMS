package com.riglesoft.users.dao;

import java.util.List;

import com.riglesoft.users.model.BatteryReport;

public interface BatteryReportDao {
	public List<BatteryReport> findByMkrDate(String date);
}
