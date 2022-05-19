package com.smhrd.domain;

import java.math.BigDecimal;

public class PLACE_INFO {
	
	
	String PLACE_NAME;
	String PLACE_ADD;
	BigDecimal WEEK_SRT;
	BigDecimal WEEK_END;
	BigDecimal WKND_SRT;
	BigDecimal WKND_END;
	String PLACE_TEL;
	String PLACE_PRICE;
	BigDecimal PLACE_LAT;
	BigDecimal PLACE_HAR;
	String OUTDOOR;
	String SHOWER;
	String PARKING;
	

	
	public PLACE_INFO(String pLACE_NAME, String pLACE_ADD, BigDecimal wEEK_SRT, BigDecimal wEEK_END,
			BigDecimal wKND_SRT, BigDecimal wKND_END, String pLACE_TEL, String pLACE_PRICE, BigDecimal pLACE_LAT,
			BigDecimal pLACE_HAR, String oUTDOOR, String sHOWER, String pARKING) {
		super();
		PLACE_NAME = pLACE_NAME;
		PLACE_ADD = pLACE_ADD;
		WEEK_SRT = wEEK_SRT;
		WEEK_END = wEEK_END;
		WKND_SRT = wKND_SRT;
		WKND_END = wKND_END;
		PLACE_TEL = pLACE_TEL;
		PLACE_PRICE = pLACE_PRICE;
		PLACE_LAT = pLACE_LAT;
		PLACE_HAR = pLACE_HAR;
		OUTDOOR = oUTDOOR;
		SHOWER = sHOWER;
		PARKING = pARKING;
	}
	public String getPLACE_NAME() {
		return PLACE_NAME;
	}
	public void setPLACE_NAME(String pLACE_NAME) {
		PLACE_NAME = pLACE_NAME;
	}
	public String getPLACE_ADD() {
		return PLACE_ADD;
	}
	public void setPLACE_ADD(String pLACE_ADD) {
		PLACE_ADD = pLACE_ADD;
	}
	public BigDecimal getWEEK_SRT() {
		return WEEK_SRT;
	}
	public void setWEEK_SRT(BigDecimal wEEK_SRT) {
		WEEK_SRT = wEEK_SRT;
	}
	public BigDecimal getWEEK_END() {
		return WEEK_END;
	}
	public void setWEEK_END(BigDecimal wEEK_END) {
		WEEK_END = wEEK_END;
	}
	public BigDecimal getWKND_SRT() {
		return WKND_SRT;
	}
	public void setWKND_SRT(BigDecimal wKND_SRT) {
		WKND_SRT = wKND_SRT;
	}
	public BigDecimal getWKND_END() {
		return WKND_END;
	}
	public void setWKND_END(BigDecimal wKND_END) {
		WKND_END = wKND_END;
	}
	public String getPLACE_TEL() {
		return PLACE_TEL;
	}
	public void setPLACE_TEL(String pLACE_TEL) {
		PLACE_TEL = pLACE_TEL;
	}
	public String getPLACE_PRICE() {
		return PLACE_PRICE;
	}
	public void setPLACE_PRICE(String pLACE_PRICE) {
		PLACE_PRICE = pLACE_PRICE;
	}
	public BigDecimal getPLACE_LAT() {
		return PLACE_LAT;
	}
	public void setPLACE_LAT(BigDecimal pLACE_LAT) {
		PLACE_LAT = pLACE_LAT;
	}
	public BigDecimal getPLACE_HAR() {
		return PLACE_HAR;
	}
	public void setPLACE_HAR(BigDecimal pLACE_HAR) {
		PLACE_HAR = pLACE_HAR;
	}
	public String getOUTDOOR() {
		return OUTDOOR;
	}
	public void setOUTDOOR(String oUTDOOR) {
		OUTDOOR = oUTDOOR;
	}
	public String getSHOWER() {
		return SHOWER;
	}
	public void setSHOWER(String sHOWER) {
		SHOWER = sHOWER;
	}
	public String getPARKING() {
		return PARKING;
	}
	public void setPARKING(String pARKING) {
		PARKING = pARKING;
	}
	
	
	
}
