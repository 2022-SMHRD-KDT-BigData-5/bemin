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

	public USER_INFO(String ID, String PW, String NAME, String EMAIL, String GENDER, String TEL, String ADDRESS,
			Timestamp JOIN_DATE, BigDecimal CASH, BigDecimal MANAGER, BigDecimal USER_TIER, BigDecimal USER_MANNER) {
		super();
		this.ID = ID;
		this.PW = PW;
		this.NAME = NAME;
		this.EMAIL = EMAIL;
		this.GENDER = GENDER;
		this.TEL = TEL;
		this.ADDRESS = ADDRESS;
		this.JOIN_DATE = JOIN_DATE;
		this.CASH = CASH;
		this.MANAGER = MANAGER;
		this.USER_TIER = USER_TIER;
		this.USER_MANNER = USER_MANNER;
	}

	public USER_INFO(String ID, String NAME, String TEL) {
		super();
		this.ID = ID;
		this.NAME = NAME;
		this.TEL = TEL;
	}

	public USER_INFO(String ID, String PW) {
		super();
		this.ID = ID;
		this.PW = PW;
	}

	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}

	public String getPW() {
		return PW;
	}

	public void setPW(String PW) {
		this.PW = PW;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String NAME) {
		this.NAME = NAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String EMAIL) {
		this.EMAIL = EMAIL;
	}

	public String getGENDER() {
		return GENDER;
	}

	public void setGENDER(String GENDER) {
		this.GENDER = GENDER;
	}

	public String getTEL() {
		return TEL;
	}

	public void setTEL(String TEL) {
		this.TEL = TEL;
	}

	public String getADDRESS() {
		return ADDRESS;
	}

	public void setADDRESS(String ADDRESS) {
		this.ADDRESS = ADDRESS;
	}

	public Timestamp getJOIN_DATE() {
		return JOIN_DATE;
	}

	public void setJOIN_DATE(Timestamp JOIN_DATE) {
		this.JOIN_DATE = JOIN_DATE;
	}

	public BigDecimal getCASH() {
		return CASH;
	}

	public void setCASH(BigDecimal CASH) {
		this.CASH = CASH;
	}

	public BigDecimal getMANAGER() {
		return MANAGER;
	}

	public void setMANAGER(BigDecimal MANAGER) {
		this.MANAGER = MANAGER;
	}

	public BigDecimal getUSER_TIER() {
		return USER_TIER;
	}

	public void setUSER_TIER(BigDecimal USER_TIER) {
		this.USER_TIER = USER_TIER;
	}

	public BigDecimal getUSER_MANNER() {
		return USER_MANNER;
	}

	public void setUSER_MANNER(BigDecimal USER_MANNER) {
		this.USER_MANNER = USER_MANNER;
	}

}
