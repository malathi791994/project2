package com.niit.dao;

import java.util.List;

import com.niit.model.Forum;





public interface ForumDAO {
 public int insertRow(Forum forum);

 public List getList();

 public Forum getRowById(int id);

 public int updateRow(Forum forum);

 public int deleteRow(int id);

}