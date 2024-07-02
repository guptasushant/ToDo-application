package com.todo.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.todo.api.entity.Task;
import com.todo.api.service.TaskService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Taskcontroller {

	@Autowired
	private TaskService impl;
	

	
	@PostMapping("/task")
	public String taskcreater(@ModelAttribute Task task) {
		System.out.println("task controller");
		this.impl.saveTask(task);
		
		return "redirect:/fetch";
	}
	
	
	   @GetMapping("/fetch")
	    public List<Task> fetchTasks(Model model) {
	        List<Task> tasks = impl.getAlltask(); // Fetch tasks from service layer
//	       System.out.println(tasks);
	        model.addAttribute("tasks", tasks); // Add tasks to model
//	       
	        return tasks; // Corresponds to tasks.jsp in src/main/webapp/WEB-INF/views/
	    }
	     
	   @GetMapping("/taskfinish")
	    public String taskFinish(@RequestParam("id") int id, HttpServletRequest request) {
	        Task task = impl.getid(id);
	        request.setAttribute("task", task);
	        return "finish";
	    }
}
