package com.smhrd.domain;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

public class RESERVATION {
	private int RES_NUM;
	private Date RES_DATE;
	private Time RES_TIME;
	private String RES_PLACE;
	private String RES_ADD;
	private int RES_COOD;
	public RESERVATION(int rES_NUM, Date rES_DATE, Time rES_TIME, String rES_PLACE, String rES_ADD, int rES_COOD) {
		super();
		RES_NUM = rES_NUM;
		RES_DATE = rES_DATE;
		RES_TIME = rES_TIME;
		RES_PLACE = rES_PLACE;
		RES_ADD = rES_ADD;
		RES_COOD = rES_COOD;
	}
	public int getRES_NUM() {
		return RES_NUM;
	}
	public void setRES_NUM(int rES_NUM) {
		RES_NUM = rES_NUM;
	}
	public Date getRES_DATE() {
		return RES_DATE;
	}
	public void setRES_DATE(Date rES_DATE) {
		RES_DATE = rES_DATE;
	}
	public Time getRES_TIME() {
		return RES_TIME;
	}
	public void setRES_TIME(Time rES_TIME) {
		RES_TIME = rES_TIME;
	}
	public String getRES_PLACE() {
		return RES_PLACE;
	}
	public void setRES_PLACE(String rES_PLACE) {
		RES_PLACE = rES_PLACE;
	}
	public String getRES_ADD() {
		return RES_ADD;
	}
	public void setRES_ADD(String rES_ADD) {
		RES_ADD = rES_ADD;
	}
	public int getRES_COOD() {
		return RES_COOD;
	}
	public void setRES_COOD(int rES_COOD) {
		RES_COOD = rES_COOD;
	}
	
	
	
	
	
}
