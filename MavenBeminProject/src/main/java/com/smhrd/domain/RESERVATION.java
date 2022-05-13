package com.smhrd.domain;

public class RESERVATION {
	private String RES_NUM;
	private String RES_DATE;
	private String RES_TIME;
	private String RES_PLACE;
	private String RES_ADD;
	private String RES_COOD;
	
	public RESERVATION(String rES_NUM, String rES_DATE, String rES_TIME, String rES_PLACE, String rES_ADD,
			String rES_COOD) {
		super();
		RES_NUM = rES_NUM;
		RES_DATE = rES_DATE;
		RES_TIME = rES_TIME;
		RES_PLACE = rES_PLACE;
		RES_ADD = rES_ADD;
		RES_COOD = rES_COOD;
	}

	public String getRES_NUM() {
		return RES_NUM;
	}

	public void setRES_NUM(String rES_NUM) {
		RES_NUM = rES_NUM;
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

	public String getRES_ADD() {
		return RES_ADD;
	}

	public void setRES_ADD(String rES_ADD) {
		RES_ADD = rES_ADD;
	}

	public String getRES_COOD() {
		return RES_COOD;
	}

	public void setRES_COOD(String rES_COOD) {
		RES_COOD = rES_COOD;
	}
}
