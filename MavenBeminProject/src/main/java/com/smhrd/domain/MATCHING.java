package com.smhrd.domain;

import java.sql.Date;
import java.sql.Time;

public class MATCHING {
	private int MAT_NO;
	private Date RES_DATE;
	private Time RES_TIME;
	private String RES_PLACE;
	private String ID;
	private int UNIT;
	private int MAT_MEMBER;
	private int STN_TIER;
	private int STN_MANNER;
	private int MAT_CPL;
	public MATCHING(int mAT_NO, Date rES_DATE, Time rES_TIME, String rES_PLACE, String iD, int uNIT, int mAT_MEMBER,
			int sTN_TIER, int sTN_MANNER, int mAT_CPL) {
		super();
		MAT_NO = mAT_NO;
		RES_DATE = rES_DATE;
		RES_TIME = rES_TIME;
		RES_PLACE = rES_PLACE;
		ID = iD;
		UNIT = uNIT;
		MAT_MEMBER = mAT_MEMBER;
		STN_TIER = sTN_TIER;
		STN_MANNER = sTN_MANNER;
		MAT_CPL = mAT_CPL;
	}
	public int getMAT_NO() {
		return MAT_NO;
	}
	public void setMAT_NO(int mAT_NO) {
		MAT_NO = mAT_NO;
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
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public int getUNIT() {
		return UNIT;
	}
	public void setUNIT(int uNIT) {
		UNIT = uNIT;
	}
	public int getMAT_MEMBER() {
		return MAT_MEMBER;
	}
	public void setMAT_MEMBER(int mAT_MEMBER) {
		MAT_MEMBER = mAT_MEMBER;
	}
	public int getSTN_TIER() {
		return STN_TIER;
	}
	public void setSTN_TIER(int sTN_TIER) {
		STN_TIER = sTN_TIER;
	}
	public int getSTN_MANNER() {
		return STN_MANNER;
	}
	public void setSTN_MANNER(int sTN_MANNER) {
		STN_MANNER = sTN_MANNER;
	}
	public int getMAT_CPL() {
		return MAT_CPL;
	}
	public void setMAT_CPL(int mAT_CPL) {
		MAT_CPL = mAT_CPL;
	}
	
	
	
}
