package com.todo.api.service;

import java.util.List;

import com.todo.api.entity.Task;

public interface TaskService {
	Task saveTask(Task task);
	
	Task deleteTask(int id);
	
	List<Task> getAlltask();
	
	Task getid(int id);
}
