package com.infinite.employ;

import java.io.IOException;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.text.ParseException;
import java.util.Calendar;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


public class EmployDAO {

	SessionFactory sessionfactory;

	public Date convertDate(java.util.Date d) {
		if (d == null) {
			return null;
		}
		Date sqlDate=new Date(d.getTime());
		return sqlDate;
	}


	public static int calculateAge(Date birthdate) {
		Calendar dob = Calendar.getInstance();
		dob.setTime(birthdate);
		Calendar today = Calendar.getInstance();
		int age = today.get(Calendar.YEAR) - dob.get(Calendar.YEAR);
		if (today.get(Calendar.DAY_OF_YEAR) < dob.get(Calendar.DAY_OF_YEAR)) {
			age--;
		}
		return age;
	}
	public Date calEndDate(Employ employ){
	    Calendar calendar = Calendar.getInstance();
	    calendar.setTime(employ.getBeginDate());
	    if (employ.getEstatus().equals(Status.PARTTIME)) {
	        calendar.add(Calendar.MONTH, 1);
	        Date endDate = new Date(calendar.getTimeInMillis());
	        //employ.setEndDate(endDate);
	        return endDate;
	    }
	    return null;
	}
	
	public String addemploy(Employ employ) {
		SessionFactory sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			int employId = generateemployId();
			Date birthday = convertDate(employ.getBirthday());
			Date beginDate = convertDate(employ.getBeginDate());
			int age = calculateAge(birthday);
			Criteria criteria = session.createCriteria(Employ.class);
			Employ existingEmploy = (Employ) criteria.add(Restrictions.eq("email", employ.getEmail())).uniqueResult();
			if (existingEmploy != null) {
				return "Employee with email " + employ.getEmail() + " already exists.";
			}
			String hashedPassword = hashPassword(employ.getPassword());
			employ.setEmployId(employId);
			employ.setBirthday(birthday);
			employ.setAge(age);
//			employ.setBeginDate(beginDate);
//			Calendar calendar = Calendar.getInstance();
//			calendar.setTime(beginDate);
//			if (employ.getEstatus().equals("PARTTIME")) {
//			    calendar.add(Calendar.MONTH, 1);
//			    Date endDate = new Date(calendar.getTimeInMillis());
//			    employ.setEndDate(endDate);
//			}
			employ.setBeginDate(beginDate);
			Date endDate = calEndDate(employ);
			employ.setEndDate(endDate);
			employ.setPassword(hashedPassword);
			session.save(employ);
			 session.flush(); // flush the session to immediately persist the changes to the database
			transaction.commit();
			return "Employee added successfully.";
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
			return "An error occurred while adding employee.";
		} finally {
			session.close();
		}
	}

	private int generateemployId() {
		return 0;
	}
	private String hashPassword(String password) {
		String generatedPassword = null;
		try {
			// Static getInstance method is called with hashing MD5
			MessageDigest md = MessageDigest.getInstance("SHA-256");

            // digest() method is called to calculate message digest
            // of an input digest() return array of byte
			byte[] bytes = md.digest(password.getBytes(StandardCharsets.UTF_8));
			// converts each byte in the array to a string representation
			StringBuilder sb = new StringBuilder();
			for (byte b : bytes) {
				sb.append(String.format("%02x", b));
			}
			generatedPassword = sb.toString();
			// For specifying wrong message digest algorithms
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return generatedPassword;
	}

	public int loginCheck(String email, String password) throws ParseException, IOException {
		sessionfactory = SessionHelper.getConnection();
		Session session = sessionfactory.openSession();
		Criteria cr = session.createCriteria(Employ.class);
		cr.add(Restrictions.eq("email", email));
		String hashedPassword = hashPassword(password);
		cr.add(Restrictions.eq("password", hashedPassword));
		List<Employ> elist = cr.list();
		session.close();

		if (elist.size() == 1) {
			// Login successful
			return elist.size();
		} else {
			// Invalid email or password
			return 0;
		}
	}
	
	public List<Employ> showEmploy( ) {
		sessionfactory = SessionHelper.getConnection();
		Session session = sessionfactory.openSession();
		Criteria cr = session.createCriteria(Employ.class);
		List<Employ> elist = cr.list();		
		return elist;
	}


}