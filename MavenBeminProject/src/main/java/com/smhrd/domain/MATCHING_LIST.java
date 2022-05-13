package com.smhrd.domain;

public class MATCHING_LIST {
	private String LIST_NO;
	private String MAT_NO;
	private String ID;
	private String MANAGER;
	
	public MATCHING_LIST(String lIST_NO, String mAT_NO, String iD, String mANAGER) {
		super();
		LIST_NO = lIST_NO;
		MAT_NO = mAT_NO;
		ID = iD;
		MANAGER = mANAGER;
	}

	public String getLIST_NO() {
		return LIST_NO;
	}

	public void setLIST_NO(String lIST_NO) {
		LIST_NO = lIST_NO;
	}

	public String getMAT_NO() {
		return MAT_NO;
	}

	public void setMAT_NO(String mAT_NO) {
		MAT_NO = mAT_NO;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getMANAGER() {
		return MANAGER;
	}

	public void setMANAGER(String mANAGER) {
		MANAGER = mANAGER;
	}
	
}
