package com.niit.services;

import java.util.List;

import com.niit.model.Blog;



public interface BlogService {
 public int insertRow(Blog blog);

 public List getList();

 public Blog getRowById(int id);

 public int updateRow(Blog blog );

 public int deleteRow(int id);

}