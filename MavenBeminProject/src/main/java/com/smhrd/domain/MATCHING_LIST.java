package com.smhrd.domain;

public class MATCHING_LIST {
	private int LIST_NO;
	private int MAT_NO;
	private String ID;
	private int MANAGER;

	public MATCHING_LIST(int LIST_NO, int MAT_NO, String ID, int MANAGER) {
		super();
		this.LIST_NO = LIST_NO;
		this.MAT_NO = MAT_NO;
		this.ID = ID;
		this.MANAGER = MANAGER;
	}
	
	public MATCHING_LIST(String ID, int MAT_NO) {
		super();
		this.ID = ID;
		this.MAT_NO = MAT_NO;
		}
	public MATCHING_LIST() {

	}
	
	public MATCHING_LIST(String ID) {
	super();
	this.ID = ID;
	}
	
	
	public int getLIST_NO() {
		return LIST_NO;
	}

	public void setLIST_NO(int LIST_NO) {
		this.LIST_NO = LIST_NO;
	}

	public int getMAT_NO() {
		return MAT_NO;
	}

	public void setMAT_NO(int MAT_NO) {
		this.MAT_NO = MAT_NO;
	}

	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}

	public int getMANAGER() {
		return MANAGER;
	}

	public void setMANAGER(int MANAGER) {
		this.MANAGER = MANAGER;
	}

}
