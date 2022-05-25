package com.smhrd.domain;

public class TIER {
	
	private int APP_NO;
	private String APP_ID;
	private String APPED_ID;
	private String APP_TIER;
	private int APP_MANNER;
	
	public TIER(int APP_NO, String APP_ID, String APPED_ID, String APP_TIER, int APP_MANNER) {
		super();
		this.APP_NO = APP_NO;
		this.APP_ID = APP_ID;
		this.APPED_ID = APPED_ID;
		this.APP_TIER = APP_TIER;
		this.APP_MANNER = APP_MANNER;
	}
		
	public TIER(String APP_TIER, String APP_ID, String APPED_ID) {
		super();
		this.APP_TIER = APP_TIER;
		this.APP_ID = APP_ID;
		this.APPED_ID = APPED_ID;
	}

	public int getAPP_NO() {
		return APP_NO;
	}
	public void setAPP_NO(int APP_NO) {
		this.APP_NO = APP_NO;
	}

	public String getAPP_ID() {
		return APP_ID;
	}
	public void setAPP_ID(String APP_ID) {
		this.APP_ID = APP_ID;
	}
	public String getAPPED_ID() {
		return APPED_ID;
	}
	public void setAPPED_ID(String APPED_ID) {
		this.APPED_ID = APPED_ID;
	}
	public String getAPP_TIER() {
		return APP_TIER;
	}
	public void setAPP_TIER(String APP_TIER) {
		this.APP_TIER = APP_TIER;
	}
	public int getAPP_MANNER() {
		return APP_MANNER;
	}
	public void setAPP_MANNER(int APP_MANNER) {
		this.APP_MANNER = APP_MANNER;
	}
	
	
	

}
