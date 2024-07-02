package com.todo.api.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public class UserDto {
	private int id;
	
	@NotNull(message = "Email cannot be null")
	@NotBlank(message = "Email cannot be blank")
	@Email(message = "Email should be valid")
	private String email;
	
	@NotNull(message = "Name cannot be null")
	@NotBlank(message = "Name cannot be blank")
	@Size(min = 6, message = "Name must be at least 6 characters long")
	private String name;
	
	private String contact;
	
	@NotNull(message = "Password cannot be null")
	@NotBlank(message = "Password cannot be blank")
	@Size(min = 8, message = "Password must be at least 8 characters long")
	@Pattern(regexp = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d).{8,}$", message = "Password must contain at least one uppercase letter, one lowercase letter, one digit, and be at least 8 characters long")
	private String password;
	
	private String confirmPassword;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public UserDto(int id,
			@NotNull(message = "Email cannot be null") @NotBlank(message = "Email cannot be blank") @Email(message = "Email should be valid") String email,
			@NotNull(message = "Name cannot be null") @NotBlank(message = "Name cannot be blank") @Size(min = 6, message = "Name must be at least 6 characters long") String name,
			String contact,
			@NotNull(message = "Password cannot be null") @NotBlank(message = "Password cannot be blank") @Size(min = 8, message = "Password must be at least 8 characters long") @Pattern(regexp = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d).{8,}$", message = "Password must contain at least one uppercase letter, one lowercase letter, one digit, and be at least 8 characters long") String password,
			String confirmPassword) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.contact = contact;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}

	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", email=" + email + ", name=" + name + ", contact=" + contact + ", password="
				+ password + ", confirmPassword=" + confirmPassword + "]";
	}

}
