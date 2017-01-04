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

import com.google.gson.Gson;
import com.niit.model.Blog;
import com.niit.model.Cmd;
import com.niit.services.BlogImplservice;
import com.niit.services.BlogService;
import com.niit.services.CommentService;

@Controller
public class Blogcontroller {

	public Blogcontroller() {
		System.out.println("blog controller");
	}

	@Autowired
	BlogService blogService;
	@Autowired
	CommentService commentService;
	@RequestMapping(value="blog1",method=RequestMethod.POST)
	public ModelAndView blogg(@ModelAttribute("blo") Blog blo,Model m) {

		blo.setCreationDate(new Date());
		blogService.insertRow(blo);
		blo=blogService.getRowById(blo.getId());
		m.addAttribute("b", blo);
		return new ModelAndView("confirmblog");
	}
	@RequestMapping("/blogpage")
	public String blogpage(@ModelAttribute("cmt") Cmd cmt,@RequestParam int id,Model m)
	{
		Blog blo=blogService.getRowById(id);
		m.addAttribute("b" ,blo);
		//m.addAttribute("b", blo);
		List<Cmd> cmtLt=commentService.getList();
		List<Cmd> cmtNeed=new ArrayList<Cmd>();
		for(Cmd ccmt:cmtLt)
		{
			if(ccmt.getBlogid()==id)
			{
				cmtNeed.add(ccmt);
			}
		}
		/*String str=gson.toJson(cmtNeed);*/
		m.addAttribute("cmts", cmtNeed);
		return "blogpage";	
	}
	@RequestMapping("view")
	public String view(@ModelAttribute("cmt") Cmd cmt,@RequestParam int id,Model m)
	{
		Blog blo=blogService.getRowById(id);
		m.addAttribute("b" ,blo);
		//m.addAttribute("b", blo);
		List<Cmd> cmtLt=commentService.getList();
		List<Cmd> cmtNeed=new ArrayList<Cmd>();
		for(Cmd ccmt:cmtLt)
		{
			if(ccmt.getBlogid()==id)
			{
				cmtNeed.add(ccmt);
			}
		}
		/*String str=gson.toJson(cmtNeed);*/
		m.addAttribute("cmts", cmtNeed);
		return "view";	
	}
	@RequestMapping("/editblog")
	public ModelAndView gotoedit(@ModelAttribute("bo") Blog bo,@RequestParam int id,Model m) {
		bo=blogService.getRowById(id);
		//List productLt = blogService.getList();
		m.addAttribute("blogObject", bo);
		return new ModelAndView("editblog");
		}
	@RequestMapping("/deleteblog")
	public ModelAndView deleteUser(@ModelAttribute("bo") Blog bo,@RequestParam int id, Model m) {
		blogService.deleteRow(id);
		//List productLt = blogService.getList();
		List bloglt=blogService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(bloglt);
	/*	m.addAttribute("pdata",st);*/
	
		m.addAttribute("blogs",st);
	
		return new ModelAndView("bloglist");
	}

	@RequestMapping("/updateblog")
	public ModelAndView updateUser(@ModelAttribute("bo") Blog  bo,Model m) {
		bo.setCreationDate(new Date());
		blogService.updateRow(bo);
		bo=blogService.getRowById(bo.getId());
		m.addAttribute("b",bo);
	return new ModelAndView("confirmblog");
			}


	@RequestMapping("bloglist")
	public String haai(@ModelAttribute("blo") Blog blo,Model m){
		List bloglt=blogService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(bloglt);
	/*	m.addAttribute("pdata",st);*/
	
		m.addAttribute("blogs",st);
		return "bloglist"; 

}
	@RequestMapping(value="addComment",method=RequestMethod.POST)
	public String toAddItDb(@ModelAttribute("cmt")Cmd cmt,@RequestParam int id,Model m)
	{
		cmt.setCreationDate(new Date());;
		commentService.insertRow(cmt);
		/*List<BlogComment> bloLt=blogCommentService.getList();
		m.addAttribute("blog", bloLt);*/
		int cmtCount=0;
		Blog blo=blogService.getRowById(id);
		m.addAttribute("b", blo);
		List<Cmd> cmtLt=commentService.getList();
		List<Cmd> cmtNeed=new ArrayList<Cmd>();
		for(Cmd ccmt:cmtLt)
		{
			if(ccmt.getBlogid()==id)
			{
				cmtNeed.add(ccmt);
				cmtCount++;
			}
		}
		/*String str=gson.toJson(cmtNeed);*/
		m.addAttribute("cmts", cmtNeed);
		m.addAttribute("count", cmtCount);

		return "view";
	}

}