package com.smhrd.domain;

import java.math.BigDecimal;

public class TIER {
	
	private BigDecimal APP_NO;
	private String APP_ID;
	private String APPED_ID;
	private String APP_TIER;
	private BigDecimal APP_MANNER;
	
	public TIER(BigDecimal APP_NO, String APP_ID, String APPED_ID, String APP_TIER, BigDecimal APP_MANNER) {
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

	public BigDecimal getAPP_NO() {
		return APP_NO;
	}
	public void setAPP_NO(BigDecimal APP_NO) {
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
	public BigDecimal getAPP_MANNER() {
		return APP_MANNER;
	}
	public void setAPP_MANNER(BigDecimal APP_MANNER) {
		this.APP_MANNER = APP_MANNER;
	}
	
	
	

}
