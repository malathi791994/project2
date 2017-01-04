package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ForumDAO;
import com.niit.dao.ForumDAOImpl;
import com.niit.model.Forum;

@Service("forumService")
public class ForumImplservice implements ForumService {
    
	 @Autowired
	 ForumDAO forumDAO;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Forum forum) {
	  return forumDAO.insertRow(forum);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return forumDAO.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Forum getRowById(int id) {
	  return forumDAO.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Forum forum) {
	  return forumDAO.updateRow(forum);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return forumDAO.deleteRow(id);
	 }
}