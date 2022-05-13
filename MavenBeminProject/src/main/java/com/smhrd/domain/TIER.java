package com.smhrd.domain;

public class TIER {
	private String USER_TIER;
	private String MANNER;
	private String APP_NO;
	private String LIST_NO;
	private String APP_ID;
	
	public TIER(String uSER_TIER, String mANNER, String aPP_NO, String lIST_NO, String aPP_ID) {
		super();
		USER_TIER = uSER_TIER;
		MANNER = mANNER;
		APP_NO = aPP_NO;
		LIST_NO = lIST_NO;
		APP_ID = aPP_ID;
	}

	public String getUSER_TIER() {
		return USER_TIER;
	}

	public void setUSER_TIER(String uSER_TIER) {
		USER_TIER = uSER_TIER;
	}

	public String getMANNER() {
		return MANNER;
	}

	public void setMANNER(String mANNER) {
		MANNER = mANNER;
	}

	public String getAPP_NO() {
		return APP_NO;
	}

	public void setAPP_NO(String aPP_NO) {
		APP_NO = aPP_NO;
	}

	public String getLIST_NO() {
		return LIST_NO;
	}

	public void setLIST_NO(String lIST_NO) {
		LIST_NO = lIST_NO;
	}

	public String getAPP_ID() {
		return APP_ID;
	}

	public void setAPP_ID(String aPP_ID) {
		APP_ID = aPP_ID;
	}
	
}
