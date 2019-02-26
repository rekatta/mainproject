package com.reflection;

public class Employee {
	private int empId;
	private String empName;
	private String company;
	
	public Employee() {
		
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public void display()
	{
		System.out.println("emp id:"+getEmpId() +"emp name:" +getEmpName() + "emp company" +getCompany()
);
		}
	public void renu()
	{
		System.out.println("renu ");
	}

}
