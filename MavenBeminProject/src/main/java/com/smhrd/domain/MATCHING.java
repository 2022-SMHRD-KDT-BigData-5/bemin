package com.smhrd.domain;

public class MATCHING {
	private String MAT_NO;
	private String RES_DATE;
	private String RES_TIME;
	private String RES_PLACE;
	private String ID;
	private String UNIT;
	private String MAT_MEMBER;
	private String STN_TIER;
	private String STN_MANNER;
	private String MAT_CPL;
	
	public MATCHING(String mAT_NO, String rES_DATE, String rES_TIME, String rES_PLACE, String iD, String uNIT,
			String mAT_MEMBER, String sTN_TIER, String sTN_MANNER, String mAT_CPL) {
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

	public String getMAT_NO() {
		return MAT_NO;
	}

	public void setMAT_NO(String mAT_NO) {
		MAT_NO = mAT_NO;
	}

	public String getRES_DATE() {
		return RES_DATE;
	}

	public void setRES_DATE(String rES_DATE) {
		RES_DATE = rES_DATE;
	}

	public String getRES_TIME() {
		return RES_TIME;
	}

	public void setRES_TIME(String rES_TIME) {
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

	public String getUNIT() {
		return UNIT;
	}

	public void setUNIT(String uNIT) {
		UNIT = uNIT;
	}

	public String getMAT_MEMBER() {
		return MAT_MEMBER;
	}

	public void setMAT_MEMBER(String mAT_MEMBER) {
		MAT_MEMBER = mAT_MEMBER;
	}

	public String getSTN_TIER() {
		return STN_TIER;
	}

	public void setSTN_TIER(String sTN_TIER) {
		STN_TIER = sTN_TIER;
	}

	public String getSTN_MANNER() {
		return STN_MANNER;
	}

	public void setSTN_MANNER(String sTN_MANNER) {
		STN_MANNER = sTN_MANNER;
	}

	public String getMAT_CPL() {
		return MAT_CPL;
	}

	public void setMAT_CPL(String mAT_CPL) {
		MAT_CPL = mAT_CPL;
	}
	
}
