package com.mobileweb.dao;

import java.util.List;

import com.mobileweb.model.User;

public interface UserDao {
   void save(User user);
   List<User> list();
}
