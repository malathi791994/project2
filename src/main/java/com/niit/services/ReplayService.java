package com.niit.services;

import java.util.List;

import com.niit.model.rep;



public interface ReplayService {
 public int insertRow(rep rep);

 public List getList();

 public rep getRowById(int id);

 public int updateRow(rep rep );

 public int deleteRow(int id);

}