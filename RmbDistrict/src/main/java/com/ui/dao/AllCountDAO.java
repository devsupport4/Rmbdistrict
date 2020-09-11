package com.ui.dao;

import javax.servlet.http.HttpSession;

import com.ui.model.AllCount;

public interface AllCountDAO {

	public AllCount getAllCountMeeting(HttpSession session);
	
	public AllCount getMeetingById(int memberId);
	
	public AllCount getCountRefferance(int memberId);
	
	public AllCount getCountRefferanceRecieved(int memberId);
	
	
	public AllCount getCountBusiness(int memberId);

}
