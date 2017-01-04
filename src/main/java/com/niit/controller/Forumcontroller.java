package com.niit.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Forum;
import com.niit.model.rep;
import com.niit.services.ForumService;
import com.niit.services.ReplayService;

@Controller
public class Forumcontroller {

	public Forumcontroller() {
		System.out.println("forum controller");
	}

	@Autowired
	ForumService forumService;
	
	@Autowired
	ReplayService replayService;

	@RequestMapping(value="forum1",method=RequestMethod.POST)
	public ModelAndView forumg(@ModelAttribute("flo") Forum flo,Model m) {

		flo.setCreationDate(new Date());;
		forumService.insertRow(flo);
		List<Forum> forumLt=forumService.getList();
		m.addAttribute("forumList", forumLt);
		return new ModelAndView("forum");
	}
	@RequestMapping("/forumpage")
	public String forumpage(@ModelAttribute("flo") Forum flo,@RequestParam int id,Model m)
	{
		flo=forumService.getRowById(id);
		m.addAttribute("f" ,flo);
	
		return "forumpage";	
	}
	@RequestMapping("fview")
	public String hello(@ModelAttribute("rep") rep rep,@RequestParam int id,Model m){
		Forum flo=forumService.getRowById(id);
		m.addAttribute("f",flo);
		List<rep> cmtLt=replayService.getList();
		List<rep> cmtNeed=new ArrayList<rep>();
		for(rep ccmt:cmtLt)
		{
			if(ccmt.getForumid()==id)
			{
				cmtNeed.add(ccmt);
			}
		}
		/*String str=gson.toJson(cmtNeed);*/
		m.addAttribute("cmts", cmtNeed);
		
		
		return "fview"; 
	}

	@RequestMapping("forumlist")
	public String blogpage(@ModelAttribute("rep") rep rep,Model m)
	{
		
		List<Forum> forumLt=forumService.getList();
		m.addAttribute("forumList", forumLt);
		return "forumlist";	
	}
	@RequestMapping(value="addreplay",method=RequestMethod.POST)
	public String toAddItDb(@ModelAttribute("rep")rep rep,@RequestParam int id,Model m)
	{
		rep.setCreationDate(new Date());;
		replayService.insertRow(rep);
		/*List<BlogComment> bloLt=blogCommentService.getList();
		m.addAttribute("blog", bloLt);*/
		
		Forum blo=forumService.getRowById(id);
		m.addAttribute("f", blo);
		List<rep> cmtLt=replayService.getList();
		List<rep> cmtNeed=new ArrayList<rep>();
		for(rep ccmt:cmtLt)
		{
			if(ccmt.getForumid()==id)
			{
				cmtNeed.add(ccmt);
			}
		}
		/*String str=gson.toJson(cmtNeed);*/
		m.addAttribute("cmts", cmtNeed);
		return "fview";
	}

}

