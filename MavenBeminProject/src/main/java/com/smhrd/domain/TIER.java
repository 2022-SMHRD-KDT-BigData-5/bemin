package com.smhrd.domain;

public class TIER {
	
	private int APP_NO;
	private int LIST_NO;
	private String APP_ID;
	private String APPED_ID;
	private int APP_TIER;
	private int APP_MANNER;
	public TIER(int aPP_NO, int lIST_NO, String aPP_ID, String aPPED_ID, int aPP_TIER, int aPP_MANNER) {
		super();
		APP_NO = aPP_NO;
		LIST_NO = lIST_NO;
		APP_ID = aPP_ID;
		APPED_ID = aPPED_ID;
		APP_TIER = aPP_TIER;
		APP_MANNER = aPP_MANNER;
	}
	public int getAPP_NO() {
		return APP_NO;
	}
	public void setAPP_NO(int aPP_NO) {
		APP_NO = aPP_NO;
	}
	public int getLIST_NO() {
		return LIST_NO;
	}
	public void setLIST_NO(int lIST_NO) {
		LIST_NO = lIST_NO;
	}
	public String getAPP_ID() {
		return APP_ID;
	}
	public void setAPP_ID(String aPP_ID) {
		APP_ID = aPP_ID;
	}
	public String getAPPED_ID() {
		return APPED_ID;
	}
	public void setAPPED_ID(String aPPED_ID) {
		APPED_ID = aPPED_ID;
	}
	public int getAPP_TIER() {
		return APP_TIER;
	}
	public void setAPP_TIER(int aPP_TIER) {
		APP_TIER = aPP_TIER;
	}
	public int getAPP_MANNER() {
		return APP_MANNER;
	}
	public void setAPP_MANNER(int aPP_MANNER) {
		APP_MANNER = aPP_MANNER;
	}
	
	
	

}
