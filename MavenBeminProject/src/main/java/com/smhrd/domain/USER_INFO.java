package com.smhrd.domain;

import java.math.BigDecimal;
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
	private BigDecimal CASH;
	private BigDecimal MANAGER;
	private BigDecimal USER_TIER;
	private BigDecimal USER_MANNER;
	

	
	public USER_INFO(String iD, String pW, String nAME, String eMAIL, String gENDER, String tEL, String aDDRESS,
			Timestamp jOIN_DATE, BigDecimal cASH, BigDecimal mANAGER, BigDecimal uSER_TIER, BigDecimal uSER_MANNER) {
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
		

	public USER_INFO(String iD, String pW) {
		super();
		ID = iD;
		PW = pW;
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

	public BigDecimal getCASH() {
		return CASH;
	}

	public void setCASH(BigDecimal cASH) {
		CASH = cASH;
	}

	public BigDecimal getMANAGER() {
		return MANAGER;
	}

	public void setMANAGER(BigDecimal mANAGER) {
		MANAGER = mANAGER;
	}

	public BigDecimal getUSER_TIER() {
		return USER_TIER;
	}

	public void setUSER_TIER(BigDecimal uSER_TIER) {
		USER_TIER = uSER_TIER;
	}

	public BigDecimal getUSER_MANNER() {
		return USER_MANNER;
	}

	public void setUSER_MANNER(BigDecimal uSER_MANNER) {
		USER_MANNER = uSER_MANNER;
	}

	
	
	
	
	
}
