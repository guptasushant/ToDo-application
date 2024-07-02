package com.todo.api.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "taskData")
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String  taskDate;
	private String taskdescription;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTaskDate() {
		return taskDate;
	}

	public void setTaskDate(String taskDate) {
		this.taskDate = taskDate;
	}

	public String getTaskdescription() {
		return taskdescription;
	}

	public void setTaskdescription(String taskdescription) {
		this.taskdescription = taskdescription;
	}

	public Task(int id, String taskDate, String taskdescription) {
		super();
		this.id = id;
		this.taskDate = taskDate;
		this.taskdescription = taskdescription;
	}

	@Override
	public String toString() {
		return "Task [id=" + id + ", taskDate=" + taskDate + ", taskdescription=" + taskdescription + "]";
	}

	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}
}
