package com.infinite.employ;

import java.util.Date;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;
    
	@Entity
	@Table(name="employe")
	public class Employ {
		@Id
		@Column(name="employId")
        private int employId;
		
		@Column(name="firstName ")
		private String firstName ;
		
		@Column(name="lastName")
		private String lastName;
		
		@Column(name="gender")
		@Enumerated(EnumType.STRING)
		private Gender gender;
		
		@Column(name="dob")
		private Date birthday;

		@Column(name="age")
		private int age;
		
		@Column(name="mobNo")
		private String mobNo;
		
		@Column(name="localAddress")
		private String localAddress;
		
		@Column(name="peramanentAddress")
		private String peramanentAddress;
		
		@Column(name="department")
		private String department;
		
		@Column(name="jobtitle")
		private String jobtitle;
		
		@Column(name="salary")
		private String salary;
		
		@Column(name="beginDate")
		private Date beginDate;
		
		@Column(name="estatus")
		@Enumerated(EnumType.STRING)
		private Status estatus;
		
		@Column(name="endDate")
		private Date endDate;

		@Column(name="qualifications")
		private String qualifications;
		
		@Column(name="skills")
		private String skills ;
		
		@Column(name="certifications ")
		private String certifications ;
		
		@Column(name="email")
		private String email ;
		
		@Column(name="password")
		private String password ;

		public int getEmployId() {
			return employId;
		}

		public void setEmployId(int employId) {
			this.employId = employId;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public Gender getGender() {
			return gender;
		}

		public void setGender(Gender gender) {
			this.gender = gender;
		}

		public Date getBirthday() {
			return birthday;
		}

		public void setBirthday(Date birthday) {
			this.birthday = birthday;
		}

		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}

		public String getMobNo() {
			return mobNo;
		}

		public void setMobNo(String mobNo) {
			this.mobNo = mobNo;
		}

		public String getLocalAddress() {
			return localAddress;
		}

		public void setLocalAddress(String localAddress) {
			this.localAddress = localAddress;
		}

		public String getPeramanentAddress() {
			return peramanentAddress;
		}

		public void setPeramanentAddress(String peramanentAddress) {
			this.peramanentAddress = peramanentAddress;
		}

		public String getDepartment() {
			return department;
		}

		public void setDepartment(String department) {
			this.department = department;
		}

		public String getJobtitle() {
			return jobtitle;
		}

		public void setJobtitle(String jobtitle) {
			this.jobtitle = jobtitle;
		}

		public String getSalary() {
			return salary;
		}

		public void setSalary(String salary) {
			this.salary = salary;
		}

		public Date getBeginDate() {
			return beginDate;
		}

		public void setBeginDate(Date beginDate) {
			this.beginDate = beginDate;
		}

		public Status getEstatus() {
			return estatus;
		}

		public void setEstatus(Status estatus) {
			this.estatus = estatus;
		}

		public Date getEndDate() {
			return endDate;
		}

		public void setEndDate(Date endDate) {
			this.endDate = endDate;
		}

		public String getQualifications() {
			return qualifications;
		}

		public void setQualifications(String qualifications) {
			this.qualifications = qualifications;
		}

		public String getSkills() {
			return skills;
		}

		public void setSkills(String skills) {
			this.skills = skills;
		}

		public String getCertifications() {
			return certifications;
		}

		public void setCertifications(String certifications) {
			this.certifications = certifications;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public Employ() {}

		public Employ(int employId, String firstName, String lastName, Gender gender, Date birthday, int age,
				String mobNo, String localAddress, String peramanentAddress, String department, String jobtitle,
				String salary, Date beginDate, Status estatus, Date endDate, String qualifications, String skills,
				String certifications, String email, String password) {
			this.employId = employId;
			this.firstName = firstName;
			this.lastName = lastName;
			this.gender = gender;
			this.birthday = birthday;
			this.age = age;
			this.mobNo = mobNo;
			this.localAddress = localAddress;
			this.peramanentAddress = peramanentAddress;
			this.department = department;
			this.jobtitle = jobtitle;
			this.salary = salary;
			this.beginDate = beginDate;
			this.estatus = estatus;
			this.endDate = endDate;
			this.qualifications = qualifications;
			this.skills = skills;
			this.certifications = certifications;
			this.email = email;
			this.password = password;
		}

		@Override
		public String toString() {
			return "Employ [employId=" + employId + ", firstName=" + firstName + ", lastName=" + lastName + ", gender="
					+ gender + ", birthday=" + birthday + ", age=" + age + ", mobNo=" + mobNo + ", localAddress="
					+ localAddress + ", peramanentAddress=" + peramanentAddress + ", department=" + department
					+ ", jobtitle=" + jobtitle + ", salary=" + salary + ", beginDate=" + beginDate + ", estatus="
					+ estatus + ", endDate=" + endDate + ", qualifications=" + qualifications + ", skills=" + skills
					+ ", certifications=" + certifications + ", email=" + email + ", password=" + password + "]";
		}

}