package com.niit.dao;

import java.util.List;

import com.niit.model.Blog;



public interface BlogDAO {
 public int insertRow(Blog blog);

 public List getList();

 public Blog getRowById(int id);

 public int updateRow(Blog blog);

 public int deleteRow(int id);

}