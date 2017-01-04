package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Blog;
import com.niit.model.Forum;
@Controller
public class HomeController {
	@RequestMapping("/")
	public String home(){
		return "Home"; 
	}
	
	@RequestMapping("/Home")
	public String ind(){
		return "Home"; 
	}

	@RequestMapping("/login")
	public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return  "login";
  	}

	@RequestMapping("signup")
	public String h(){
		return "signup"; 
	}
	@RequestMapping("/join")
	public String ma(){
		return "index"; 
	}
		@RequestMapping("blog")
	public String hi(@ModelAttribute("blo") Blog blo){
		return "blog"; 

}
		@RequestMapping("forum")
		public String hie(@ModelAttribute("flo") Forum flo){
			return "forum"; 

	}

		@RequestMapping("chat")
	public String c(){
		return "chat"; 
	}

}
