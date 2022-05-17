package com.smhrd.domain;

import java.sql.Timestamp;

public class USER_INFO {
	private String ID;
	private String PW;
	private String NAME;
	private String EMAIL;
	private String GENDER;
	private String TEL;
	private String ADDRESS;
	private Timestamp JOIN_DATE;
	private int CASH;
	private int MANAGER;
	private int USER_TIER;
	private int USER_MANNER;
	
	public USER_INFO(String iD, String pW, String nAME, String eMAIL, String gENDER, String tEL, String aDDRESS,
			Timestamp jOIN_DATE, int cASH, int mANAGER, int uSER_TIER, int uSER_MANNER) {
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

	public Timestamp getJOIN_DATE() {
		return JOIN_DATE;
	}

	public void setJOIN_DATE(Timestamp jOIN_DATE) {
		JOIN_DATE = jOIN_DATE;
	}

	public int getCASH() {
		return CASH;
	}

	public void setCASH(int cASH) {
		CASH = cASH;
	}

	public int getMANAGER() {
		return MANAGER;
	}

	public void setMANAGER(int mANAGER) {
		MANAGER = mANAGER;
	}

	public int getUSER_TIER() {
		return USER_TIER;
	}

	public void setUSER_TIER(int uSER_TIER) {
		USER_TIER = uSER_TIER;
	}

	public int getUSER_MANNER() {
		return USER_MANNER;
	}

	public void setUSER_MANNER(int uSER_MANNER) {
		USER_MANNER = uSER_MANNER;
	}

	
	
	
	
	
}
