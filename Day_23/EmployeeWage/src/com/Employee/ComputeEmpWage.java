package com.Employee;

public class ComputeEmpWage {
	private int totalWorkingDays;
	private int empWagePerHr;
	private int totalWorkingHrs;
	private String companyName;
	int empWage;
	public ComputeEmpWage(String companyName,int totalWorkingDays, int empWagePerHr, int totalWorkingHrs) {
		this.companyName=companyName;
		this.totalWorkingDays=totalWorkingDays;
		this.empWagePerHr=empWagePerHr;
		this.totalWorkingHrs=totalWorkingHrs;
	}
	public String getCompanyName() {
		return companyName;
	}
	public int getTotalWorkingHrs() {
		return totalWorkingHrs;
	}
	public int getTotalWorkingDays() {
		return totalWorkingDays;
	}
	public int getempWagePerHr() {
		return empWagePerHr;
	}
	public void setEmpWage(int empWage) {
		this.empWage=empWage;
	}
	public void  print() {
		System.out.println(companyName+" monthlywage is "+empWage );
	}
}
