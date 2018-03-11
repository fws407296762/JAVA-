package com.sanqing.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sanqing.po.User;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	public void add(User user) {
		this.getHibernateTemplate().save(user);
	}

	public void delete(User user) {

	}

	public List queryAll() {
		return null;
	}

	public User queryByID(String username) {
		List list = this.getHibernateTemplate().find("select user from User user where user.username = '" + username + "'");
		
		if(list.size() == 0) {
			return null;
		} else {
			return (User)list.get(0);
		}
	}

	public void update(User user) {

	}

}
