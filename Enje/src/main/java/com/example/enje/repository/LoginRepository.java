package com.example.enje.repository;

import org.springframework.data.repository.CrudRepository;
import com.example.enje.entity.User;

public interface LoginRepository extends CrudRepository<User, Integer> {

	public User findByUsernameAndPassword(String username, String password);
	// void register(User user);
}
