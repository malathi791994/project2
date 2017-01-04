package com.niit.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Uaccount;
import com.niit.services.UaccountService;



@Controller
public class UserController {
	@Autowired
	UaccountService uaccountService;

@RequestMapping("/welcome")
public ModelAndView malu(HttpServletRequest req,Model m) {
	boolean flag=false;
String name=req.getParameter("username");
String emailid=req.getParameter("emailid");
String password=req.getParameter("password");
String password1=req.getParameter("confirmpassword");
	
 if(!(password.equals(password1)))
	{
		return new ModelAndView("signup","error","Password doesn't match..");
	}
	else
	{
		for (char c : name.toCharArray()) 
		{
            if (flag = Character.isDigit(c)) 
            {
            	return new ModelAndView("signup","error","Username cannot contain any digits..");
            }
           
        }
		
	}
 Uaccount us=new Uaccount();
 us.setName(name);
 us.setEmail(emailid);
 us.setPassword(password1);
 Date date=new Date();
 us.setCreationDate(date);
uaccountService.insertRow(us);
	 return new ModelAndView("index");

}
}