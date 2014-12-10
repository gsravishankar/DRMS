package com.riglesoft.users.model;

public class BatteryReport {
	
	private String mkrDate;
	private double totalCapacity;
	private double totalCharge;
	private double totalDischarge;
	public String getMkrDate() {
		return mkrDate;
	}
	public void setMkrDate(String mkrDate) {
		this.mkrDate = mkrDate;
	}
	public double getTotalCapacity() {
		return totalCapacity;
	}
	public void setTotalCapacity(double totalCapacity) {
		this.totalCapacity = totalCapacity;
	}
	public double getTotalCharge() {
		return totalCharge;
	}
	public void setTotalCharge(double totalCharge) {
		this.totalCharge = totalCharge;
	}
	public double getTotalDischarge() {
		return totalDischarge;
	}
	public void setTotalDischarge(double totalDischarge) {
		this.totalDischarge = totalDischarge;
	}
	
	

}
