package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ReplayDAO;
import com.niit.dao.ReplayDAOImpl;
import com.niit.model.rep;

@Service("replayService")
public class ReplayImplservice implements ReplayService {
    
	 @Autowired
	 ReplayDAO ReplayDAO;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(rep cat) {
	  return ReplayDAO.insertRow(cat);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return ReplayDAO.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public rep getRowById(int id) {
	  return ReplayDAO.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(rep cat) {
	  return ReplayDAO.updateRow(cat);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return ReplayDAO.deleteRow(id);																																																																																	
	 }
}