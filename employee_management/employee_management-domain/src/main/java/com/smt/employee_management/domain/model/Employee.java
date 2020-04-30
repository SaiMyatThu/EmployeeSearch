package com.smt.employee_management.domain.model;

import java.io.Serializable;

public class Employee implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String empId;

	private String empName;

	private String joinDate;

	private String email;

	private String phone;

	private String datOfBirth;

	private String gender;

	private String martialStatus;

	private String department;

	private String japLevel;

	private String position;

	private String departmentName;

	private String japaneseLevel;

	private String positionName;

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDatOfBirth() {
		return datOfBirth;
	}

	public void setDatOfBirth(String datOfBirth) {
		this.datOfBirth = datOfBirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMartialStatus() {
		return martialStatus;
	}

	public void setMartialStatus(String martialStatus) {
		this.martialStatus = martialStatus;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getJapaneseLevel() {
		return japaneseLevel;
	}

	public void setJapaneseLevel(String japaneseLevel) {
		this.japaneseLevel = japaneseLevel;
	}

	public String getJapLevel() {
		return japLevel;
	}

	public void setJapLevel(String japLevel) {
		this.japLevel = japLevel;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", joinDate=" + joinDate + ", email=" + email
				+ ", phone=" + phone + ", datOfBirth=" + datOfBirth + ", gender=" + gender + ", martialStatus="
				+ martialStatus + ", department=" + department + ", departmentName=" + departmentName
				+ ", japaneseLevel=" + japaneseLevel + ", japLevel=" + japLevel + ", positionName=" + positionName
				+ ", position=" + position + "]";
	}

}
