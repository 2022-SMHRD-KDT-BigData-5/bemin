package com.smhrd.domain;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import oracle.sql.TIMESTAMP;


public class MATCHING {
	private BigDecimal MAT_NO;
	private Timestamp RES_DATE;
	private TIMESTAMP RES_TIME;
	private String RES_PLACE;
	private String USER_ID;
	private String UNIT;
	private BigDecimal MAT_MEMBER;
	private BigDecimal STN_TIER;
	private BigDecimal STN_MANNER;
	private BigDecimal MAT_CPL;
	
	
	public MATCHING(Timestamp RES_DATE, TIMESTAMP RES_TIME, String RES_PLACE, BigDecimal MAT_MEMBER) {
		super();
		this.RES_DATE = RES_DATE;
		this.RES_TIME = RES_TIME;
		this.RES_PLACE = RES_PLACE;
		this.MAT_MEMBER = MAT_MEMBER;
	}

	public MATCHING(BigDecimal MAT_NO, Timestamp RES_DATE, TIMESTAMP RES_TIME, String RES_PLACE, String USER_ID, String UNIT, BigDecimal MAT_MEMBER,
			BigDecimal STN_TIER, BigDecimal STN_MANNER, BigDecimal MAT_CPL) {
		super();
		this.MAT_NO = MAT_NO;
		this.RES_DATE = RES_DATE;
		this.RES_TIME = RES_TIME;
		this.RES_PLACE = RES_PLACE;
		this.USER_ID = USER_ID;
		this.UNIT = UNIT;
		this.MAT_MEMBER = MAT_MEMBER;
		this.STN_TIER = STN_TIER;
		this.STN_MANNER = STN_MANNER;
		this.MAT_CPL = MAT_CPL;
	}
	public BigDecimal getMAT_NO() {
		return MAT_NO;
	}
	public void setMAT_NO(BigDecimal MAT_NO) {
		this.MAT_NO = MAT_NO;
	}
	public Timestamp getRES_DATE() {
		return RES_DATE;
	}
	public void setRES_DATE(Timestamp RES_DATE) {
		this.RES_DATE = RES_DATE;
	}
	public TIMESTAMP getRES_TIME() {
		return RES_TIME;
	}
	public void setRES_TIME(TIMESTAMP RES_TIME) {
		this.RES_TIME = RES_TIME;
	}
	public String getRES_PLACE() {
		return RES_PLACE;
	}
	public void setRES_PLACE(String RES_PLACE) {
		this.RES_PLACE = RES_PLACE;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String USER_ID) {
		this.USER_ID = USER_ID;
	}
	public String getUNIT() {
		return UNIT;
	}
	public void setUNIT(String UNIT) {
		this.UNIT = UNIT;
	}
	public BigDecimal getMAT_MEMBER() {
		return MAT_MEMBER;
	}
	public void setMAT_MEMBER(BigDecimal MAT_MEMBER) {
		this.MAT_MEMBER = MAT_MEMBER;
	}
	public BigDecimal getSTN_TIER() {
		return STN_TIER;
	}
	public void setSTN_TIER(BigDecimal STN_TIER) {
		this.STN_TIER = STN_TIER;
	}
	public BigDecimal getSTN_MANNER() {
		return STN_MANNER;
	}
	public void setSTN_MANNER(BigDecimal STN_MANNER) {
		this.STN_MANNER = STN_MANNER;
	}
	public BigDecimal getMAT_CPL() {
		return MAT_CPL;
	}
	public void setMAT_CPL(BigDecimal MAT_CPL) {
		this.MAT_CPL = MAT_CPL;
	}
	
    public String getDateStr() {
        return new SimpleDateFormat("yyyy-MM-dd").format(this.RES_DATE);
    }
    
    public String getTimeStr() {
        return new SimpleDateFormat("HH:mm:ss").format(this.RES_TIME);
    }
	
}
