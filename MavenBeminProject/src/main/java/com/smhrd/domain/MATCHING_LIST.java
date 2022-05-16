package com.smhrd.domain;

public class MATCHING_LIST {
	private int LIST_NO;
	private int MAT_NO;
	private String ID;
	private int MANAGER;
	public MATCHING_LIST(int lIST_NO, int mAT_NO, String iD, int mANAGER) {
		super();
		LIST_NO = lIST_NO;
		MAT_NO = mAT_NO;
		ID = iD;
		MANAGER = mANAGER;
	}
	public int getLIST_NO() {
		return LIST_NO;
	}
	public void setLIST_NO(int lIST_NO) {
		LIST_NO = lIST_NO;
	}
	public int getMAT_NO() {
		return MAT_NO;
	}
	public void setMAT_NO(int mAT_NO) {
		MAT_NO = mAT_NO;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public int getMANAGER() {
		return MANAGER;
	}
	public void setMANAGER(int mANAGER) {
		MANAGER = mANAGER;
	}
	
	
	
}
