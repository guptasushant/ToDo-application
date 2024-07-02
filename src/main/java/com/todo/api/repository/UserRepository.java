package com.todo.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.todo.api.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	//public User findByEmail(String email);
	
	@Query("SELECT u FROM User u WHERE u.email=:email")
    User findByEmail(@Param("email") String email);
	
}
