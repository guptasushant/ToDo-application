package com.todo.api.service;

import java.util.List;

import com.todo.api.dto.UserDto;
import com.todo.api.entity.User;

public interface UserService  {
	User userentity(UserDto userDto);
	
	UserDto dtoEntity(User user);
	
	UserDto createUser(UserDto dto);
	
	UserDto getDatabyId(int id);
	
	List<UserDto> getAllData();
	
	UserDto deleteData(int id);
	
	User findbyemail(String email);

	User updatedata(User user, String email);
}
