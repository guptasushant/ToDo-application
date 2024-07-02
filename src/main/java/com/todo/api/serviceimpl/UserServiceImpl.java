package com.todo.api.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todo.api.dto.UserDto;
import com.todo.api.entity.User;
import com.todo.api.repository.UserRepository;
import com.todo.api.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository repository;

	public User userentity(UserDto userDto) {
		User user = new User();
		user.setId(userDto.getId());
		user.setEmail(userDto.getEmail());
		user.setName(userDto.getName());
		user.setContact(userDto.getContact());
		user.setPassword(userDto.getPassword());
		user.setConfirmPassword(userDto.getConfirmPassword());
		return user;
	}

	public UserDto dtoEntity(User user) {
		UserDto dto = new UserDto();
		dto.setId(user.getId());
		dto.setEmail(user.getEmail());
		dto.setName(user.getName());
		dto.setContact(user.getContact());
		dto.setPassword(user.getPassword());
		dto.setConfirmPassword(user.getConfirmPassword());
		return dto;
	}

	@Override
	public UserDto createUser(UserDto dto) {
		User userentity = this.userentity(dto);
		User save = this.repository.save(userentity);
		UserDto entity = this.dtoEntity(save);
		return entity;
	}

	@Override
	public UserDto getDatabyId(int id) {
		User orElseThrow = this.repository.findById(id).orElseThrow(() -> new RuntimeException("id not found"));
		UserDto dtoEntity = this.dtoEntity(orElseThrow);
		return dtoEntity;
	}

	@Override
	public List<UserDto> getAllData() {
		List<User> all = this.repository.findAll();
		List<UserDto> list = new ArrayList<>();
		for (User user : all) {
			UserDto entity = this.dtoEntity(user);
			list.add(entity);
		}
		return list;
	}

	@Override
	public User updatedata(User dto, String email) {
		User user = this.repository.findByEmail(email);
		if (user == null) {
			throw new RuntimeException("User not found for email: " + email);
		}
		if (dto != null) {
			System.out.println("Database Email = " + user.getEmail());
			if (dto.getPassword() != null) {
				user.setPassword(dto.getPassword());
			}
			if (dto.getName() != null) {
				user.setName(dto.getName());
			}
			if (dto.getContact() != null) {
				user.setContact(dto.getContact());
			}

		}

		/*
		 * user.setEmail(dto.getEmail()); user.setName(dto.getName());
		 * user.setContact(dto.getContact()); user.setPassword(dto.getPassword());
		 * user.setConfirmPassword(dto.getConfirmPassword());
		 * 
		 */
		User save = this.repository.save(user);

		return save;
	}

	@Override
	public UserDto deleteData(int id) {
		User user = this.repository.findById(id).orElseThrow(() -> new RuntimeException("id not found " + id));
		UserDto dtoEntity = this.dtoEntity(user);
		this.repository.delete(user);
		return dtoEntity;
	}

	public User findbyemail(String email) {
		User byEmail = this.repository.findByEmail(email);
		return byEmail;

	}

}
