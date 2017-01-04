package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UaccountDAO;
import com.niit.model.Uaccount;
import com.niit.model.role;








@Service("UaccountService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class UaccountServiceimpl implements  UaccountService{
	
	@Autowired
	private UaccountDAO uaccountDAO;

	public int insertRow(Uaccount us) {
		// TODO Auto-generated method stub
		return uaccountDAO.insertRow( us);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return uaccountDAO.getList();
	}

	public Uaccount  getRowById(int id) {
		// TODO Auto-generated method stub
		return  uaccountDAO.getRowById(id);
	}

	public int updateRow(Uaccount  us) {
		// TODO Auto-generated method stub
	return  uaccountDAO.updateRow(us);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  uaccountDAO.deleteRow(id);
	}

	}
