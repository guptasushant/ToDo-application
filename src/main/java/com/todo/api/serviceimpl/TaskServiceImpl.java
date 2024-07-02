package com.todo.api.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todo.api.entity.Task;
import com.todo.api.repository.TaskRepository;

@Service
public class TaskServiceImpl {

	@Autowired
	private TaskRepository repository;

	public Task saveTask(Task task) {
		System.out.println("save task");
		Task save = this.repository.save(task);
		return save;
	}

	public Task deleteTask(int id) {
		Task orElseThrow = this.repository.findById(id).orElseThrow(() -> new RuntimeException("data not found "));
		this.repository.delete(orElseThrow);
		return orElseThrow;

	}

	public List<Task> getAlltask() {
		List<Task> all = this.repository.findAll();
		return all;
	}
	
	public Task getid(int id) {
		Task orElseThrow = this.repository.findById(id).orElseThrow(()->new RuntimeException());
		return orElseThrow;
		
	}
}
