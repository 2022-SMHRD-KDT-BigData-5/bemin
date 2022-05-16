package com.smhrd.domain;

public class USER_INFO {
	private String ID;
	private String PW;
	private String NAME;
	private String EMAIL;
	private String GENDER;
	private String TEL;
	private String ADDRESS;
	private String JOIN_DATE;
	private String CASH;
	private String MANAGER;
	private String USER_TIER;
	private String USER_MANNER;
	
	public USER_INFO(String iD, String pW, String nAME, String eMAIL, String gENDER, String tEL, String aDDRESS,
			String jOIN_DATE, String cASH, String mANAGER, String uSER_TIER, String uSER_MANNER) {
		super();
		ID = iD;
		PW = pW;
		NAME = nAME;
		EMAIL = eMAIL;
		GENDER = gENDER;
		TEL = tEL;
		ADDRESS = aDDRESS;
		JOIN_DATE = jOIN_DATE;
		CASH = cASH;
		MANAGER = mANAGER;
		USER_TIER = uSER_TIER;
		USER_MANNER = uSER_MANNER;
	}
	public USER_INFO(String iD, String nAME, String tEL) {
		super();
		ID = iD;		
		NAME = nAME;
		TEL = tEL;
	}
	public USER_INFO(String nAME, String tEL) {
		super();		
		NAME = nAME;
		TEL = tEL;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPW() {
		return PW;
	}

	public void setPW(String pW) {
		PW = pW;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public String getGENDER() {
		return GENDER;
	}

	public void setGENDER(String gENDER) {
		GENDER = gENDER;
	}

	public String getTEL() {
		return TEL;
	}

	public void setTEL(String tEL) {
		TEL = tEL;
	}

	public String getADDRESS() {
		return ADDRESS;
	}

	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}

	public String getJOIN_DATE() {
		return JOIN_DATE;
	}

	public void setJOIN_DATE(String jOIN_DATE) {
		JOIN_DATE = jOIN_DATE;
	}

	public String getCASH() {
		return CASH;
	}

	public void setCASH(String cASH) {
		CASH = cASH;
	}

	public String getMANAGER() {
		return MANAGER;
	}

	public void setMANAGER(String mANAGER) {
		MANAGER = mANAGER;
	}

	public String getUSER_TIER() {
		return USER_TIER;
	}

	public void setUSER_TIER(String uSER_TIER) {
		USER_TIER = uSER_TIER;
	}

	public String getUSER_MANNER() {
		return USER_MANNER;
	}

	public void setUSER_MANNER(String uSER_MANNER) {
		USER_MANNER = uSER_MANNER;
	}

	
	
	
	
	
}
