package com.niit.services;

import java.util.List;

import com.niit.model.Forum;



public interface ForumService {
 public int insertRow(Forum forum);

 public List getList();

 public Forum getRowById(int id);

 public int updateRow(Forum forum );

 public int deleteRow(int id);

}