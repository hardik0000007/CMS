package com.example.enje.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.enje.entity.User;
import com.example.enje.repository.LoginRepository;

@Service
public class LoginService {

	@Autowired
	private LoginRepository loginRepository;

	public User findByUsernamePassword(String userName, String password) {
		return loginRepository.findByUsernameAndPassword(userName, password);
	}

}
