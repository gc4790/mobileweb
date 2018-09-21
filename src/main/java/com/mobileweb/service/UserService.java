package com.mobileweb.service;

import java.util.List;

import com.mobileweb.model.User;

public interface UserService {
   void save(User user);

   List<User> list();
}
