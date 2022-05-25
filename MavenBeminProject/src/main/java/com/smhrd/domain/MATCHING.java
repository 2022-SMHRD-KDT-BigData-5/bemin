package com.smhrd.domain;

import java.math.BigDecimal;

public class MATCHING {
	private BigDecimal MAT_NO;
	private String RES_DATE;
	private String RES_TIME;
	private String RES_PLACE;
	private String USER_ID;
	private String UNIT;
	private String MAT_MEMBER;
	private String STN_TIER;
	private String STN_MANNER;
	private String MAT_CPL;
	private String GENDER;

	// 예약정보 모두 담은 생성자
	public MATCHING(String RES_DATE, String RES_TIME, String RES_PLACE, String USER_ID, String UNIT, String MAT_MEMBER,
			String STN_TIER, String STN_MANNER, String GENDER) {
		super();
		this.RES_DATE = RES_DATE;
		this.RES_TIME = RES_TIME;
		this.RES_PLACE = RES_PLACE;
		this.USER_ID = USER_ID;
		this.UNIT = UNIT;
		this.MAT_MEMBER = MAT_MEMBER;
		this.STN_TIER = STN_TIER;
		this.STN_MANNER = STN_MANNER;
		this.GENDER = GENDER;
	}

	public MATCHING(String RES_DATE, String RES_TIME, String RES_PLACE, String MAT_MEMBER) {
		super();
		this.RES_DATE = RES_DATE;
		this.RES_TIME = RES_TIME;
		this.RES_PLACE = RES_PLACE;
		this.MAT_MEMBER = MAT_MEMBER;
	}

	public MATCHING(String USER_ID) {
		super();
		this.USER_ID = USER_ID;
	}
	
	public MATCHING(BigDecimal MAT_NO) {
		super();
		this.MAT_NO = MAT_NO;
	}

	public MATCHING(BigDecimal MAT_NO, String RES_DATE, String RES_TIME, String RES_PLACE, String USER_ID, String UNIT,
			String MAT_MEMBER, String STN_TIER, String STN_MANNER, String MAT_CPL, String GENDER) {

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
		this.GENDER = GENDER;
	}

	public MATCHING(String RES_DATE, String RES_TIME, String RES_PLACE) {
		super();
		this.RES_DATE = RES_DATE;
		this.RES_TIME = RES_TIME;
		this.RES_PLACE = RES_PLACE;
	}

	public BigDecimal getMAT_NO() {
		return MAT_NO;
	}

	public void setMAT_NO(BigDecimal MAT_NO) {
		this.MAT_NO = MAT_NO;
	}

	public String getRES_DATE() {
		return RES_DATE;
	}

	public void setRES_DATE(String RES_DATE) {
		this.RES_DATE = RES_DATE;
	}

	public String getRES_TIME() {
		return RES_TIME;
	}

	public void setRES_TIME(String RES_TIME) {
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

	public String getMAT_MEMBER() {
		return MAT_MEMBER;
	}

	public void setMAT_MEMBER(String MAT_MEMBER) {
		this.MAT_MEMBER = MAT_MEMBER;
	}

	public String getSTN_TIER() {
		return STN_TIER;
	}

	public void setSTN_TIER(String STN_TIER) {
		this.STN_TIER = STN_TIER;
	}

	public String getSTN_MANNER() {
		return STN_MANNER;
	}

	public void setSTN_MANNER(String STN_MANNER) {
		this.STN_MANNER = STN_MANNER;
	}

	public String getMAT_CPL() {
		return MAT_CPL;
	}

	public void setMAT_CPL(String MAT_CPL) {
		this.MAT_CPL = MAT_CPL;
	}
	
	public MATCHING() {
		
	}




	
	
}
