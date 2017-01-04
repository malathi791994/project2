package com.niit.dao;

import java.util.List;

import com.niit.model.rep;
import com.niit.model.rep;



public interface ReplayDAO {
 public int insertRow(rep cat);

 public List getList();

 public rep getRowById(int id);

 public int updateRow(rep cat);

 public int deleteRow(int id);



}