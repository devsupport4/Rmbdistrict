package com.ui.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ui.dao.AllCountDAO;
import com.ui.model.AllCount;

@RestController
public class AllCountController {
	
	@Autowired
	AllCountDAO allCountDAO;
	 private static final Logger logger = LoggerFactory.getLogger(AllCountController.class);
		
		
	 @GetMapping(value = "/getCountMettingById")
	  public AllCount getCategoryById(int memberId, HttpServletRequest request) {
	      logger.info("***** GET getCountMettingById *****");
	      return allCountDAO.getMeetingById(memberId);
	  }
	 
		
	 @GetMapping(value = "/getCountRefferal")
	  public AllCount getCountRefferal(int memberId, HttpServletRequest request) {
	      logger.info("***** GET getCountRefferal *****");
	      return allCountDAO.getCountRefferance(memberId);
	  }
	 
	 @GetMapping(value = "/getCountRefferalRecied")
	  public AllCount getCountRefferalRecied(int memberId, HttpServletRequest request) {
	      logger.info("***** GET getCountRefferalRecied *****");
	      return allCountDAO.getCountRefferanceRecieved(memberId);
	  }
	 @GetMapping(value = "/getCountBusiness")
	  public AllCount getCountBusiness(int memberId, HttpServletRequest request) {
	      logger.info("***** getCountBusiness*****");
	      return allCountDAO.getCountBusiness(memberId);
	  }



}
