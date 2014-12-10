package com.panasonic.drms.audit.model;

public class AuditDetail {
	public String getSerialNo() {
		return this.serialNo;
	}
	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}
	public String getStatusChangeTime() {
		return this.statusChangeTime;
	}
	public void setStatusChangeTime(String statusChangeTime) {
		this.statusChangeTime = statusChangeTime;
	}
	public String getAdminID() {
		return this.adminID;
	}
	public void setAdminID(String adminID) {
		this.adminID = adminID;
	}
	public String getType() {
		return this.type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescription() {
		return this.description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public AuditDetail(String serialNo, String statusChangeTime, String adminID, String type, String description) {
		this.serialNo=serialNo;
		this.statusChangeTime=statusChangeTime;
		this.adminID=adminID;
		this.type=type;
		this.description=description;		
	}
	public AuditDetail() {
		this.serialNo=null;
		this.statusChangeTime=null;
		this.adminID=null;
		this.type=null;
		this.description=null;		
	}	
	public String toString() {
	return serialNo+" "+adminID;
	}
	
	public String getMakerDate() {
		return makerDate;
	}
	public void setMakerDate(String makerDate) {
		this.makerDate = makerDate;
	}

	private String serialNo;
	private String statusChangeTime;
	private String adminID;
	private String type;
	private String description;
	private String makerDate;
	
}
