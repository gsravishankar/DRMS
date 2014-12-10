package com.riglesoft.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.classic.Logger;




import com.panasonic.drms.audit.model.AuditDetail;
import com.riglesoft.users.model.User;

import java.util.*;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;

import com.riglesoft.users.service.BatteryReportService;
import com.panasonic.drms.audit.service.AuditService;
import com.panasonic.drms.accounts.service.AccountService;

import org.springframework.beans.factory.annotation.Autowired;

import com.riglesoft.users.model.BatteryReport;
import com.panasonic.drms.accounts.model.UserAccount;

@Controller
public class MainController {
	
	@Autowired
	BatteryReportService brs;
	@Autowired
	AuditService auditSvc;
	@Autowired
	AccountService accountSvc;	
	
	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "DRMS");
		model.addObject("message", "This is DRMS page!");
		model.setViewName("hello");
		return model;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "DRMS");
		model.addObject("message", "This DRMS page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/landing**", method = RequestMethod.GET)
	public ModelAndView landingPage(HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		HttpSession session=request.getSession(false);	
		session.setAttribute("username","sdsdsds");
		System.out.println("Username in Session is "+session.getAttribute("username"));

		List<BatteryReport> brList = brs.getBatteryReport("2014-12-08");
		System.out.println("brList = " + brList);
		model.addObject("ReportList", brList);
		
		model.addObject("title", "DRMS");
		model.setViewName("landing");

		return model;

	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout() {

		ModelAndView model = new ModelAndView();
		model.setViewName("login");

		return model;

	}
	@RequestMapping(value = "/viewlogs**", method = RequestMethod.GET)
	public ModelAndView viewLogs() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "DRMS");

		List<AuditDetail> auditList = auditSvc.getAuditDetails();
		System.out.println("auditList = " + auditList);
		model.addObject("AuditList", auditList);
		
		model.setViewName("viewlogs");

		return model;

	}
	@RequestMapping(value = "/accounts**", method = RequestMethod.GET)
	public ModelAndView getAccounts(HttpServletRequest request) {
		HttpSession session=request.getSession(false);	
		System.out.println("Username in Session is "+session.getAttribute("username"));
		
		ModelAndView model = new ModelAndView();

		if(session.getAttribute("username") != null) {
			model.addObject("title", "DRMS");
			List<UserAccount> accountlist=accountSvc.getUserList();
			System.out.println("AccountList is "+accountlist);
					//getUserAccounts();
			model.addObject("accountlist", accountlist);
			model.setViewName("accounts");
		} else {
			model.setViewName("login");
		}


		return model;

	}
	@RequestMapping(value = "/account_new**", method = RequestMethod.GET)
	public ModelAndView newAccount() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "DRMS");		
		model.setViewName("account_new");

		return model;

	}
	
	@RequestMapping(value = "/createAccount**", method = RequestMethod.POST)
	public @ResponseBody String addNewAccount(@RequestBody UserAccount uAccount)
	{
		try{
		String userName = accountSvc.createUser(uAccount);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "User "+uAccount.getUserName()+" created for "+uAccount.getFirstName()+" "+uAccount.getLastName();
	}	
	@RequestMapping(value = "/device**", method = RequestMethod.GET)
	public ModelAndView getDevices(HttpServletRequest request) {
		HttpSession session=request.getSession(false);	
		System.out.println("Username in Session is "+session.getAttribute("username"));
		
		ModelAndView model = new ModelAndView();

		if(session.getAttribute("username") != null) {
			model.addObject("title", "DRMS");
			//List<User> accountlist=getUserAccounts();
			//model.addObject("accountlist", accountlist);
			model.setViewName("managedevice");
		} else {
			model.setViewName("login");
		}
		return model;
	}	

	@RequestMapping(value = "/customer**", method = RequestMethod.GET)
	public ModelAndView getCustomerList(HttpServletRequest request) {
		HttpSession session=request.getSession(false);	
		System.out.println("Username in Session is "+session.getAttribute("username"));
		
		ModelAndView model = new ModelAndView();

		if(session.getAttribute("username") != null) {
			model.addObject("title", "DRMS");
			//List<User> accountlist=getUserAccounts();
			//model.addObject("accountlist", accountlist);
			model.setViewName("customer");
		} else {
			model.setViewName("login");
		}
		return model;
	}	
	@RequestMapping(value = "/resetpassword/{username}", method = RequestMethod.GET)
	public  @ResponseBody String resetPassword(@PathVariable("username") String username, ModelMap model, HttpServletRequest request) {

		//ModelAndView models = new ModelAndView();
		//model.addAttribute("message", "Successfully Reset Password for "+user);
		//model.setViewName("accounts");
		
		return "Successfully Reset Password for "+username;

		//return model;

	}	
	
	private List<User> getUserAccounts() {
		 
		List<User> list = new ArrayList<User>();
		list.add(new User("1","murali","Muralidharan", "Ramanujam", "jaisriram108@gmail.com","9962026579","A"));
		list.add(new User("2","siva","Sivaraman", "Pattusamy", "arumugam.pattusamy@gmail.com","9176072171","A"));
		return list;
 
	}	
		
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		

		
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

	// customize the error message
	private String getErrorMessage(HttpServletRequest request, String key) {

		Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Invalid username and password!";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			error = "Invalid username and password!";
		}

		return error;
	}

	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);

			model.addObject("username", userDetail.getUsername());

		}

		model.setViewName("403");
		return model;

	}

}