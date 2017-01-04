package com.niit.dao;

import java.util.List;

import com.niit.model.Uaccount;





public interface UaccountDAO {
 public int insertRow(Uaccount us);

 public List getList();

 public Uaccount getRowById(int id);

 public int updateRow(Uaccount us);

 public int deleteRow(int id);

}