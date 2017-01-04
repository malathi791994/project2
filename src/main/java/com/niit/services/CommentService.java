package com.niit.services;

import java.util.List;

import com.niit.model.Cmd;



public interface CommentService {
 public int insertRow(Cmd cmd);

 public List getList();

 public Cmd getRowById(int id);

 public int updateRow(Cmd cmd );

 public int deleteRow(int id);

}