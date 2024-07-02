package com.todo.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.todo.api.entity.Task;

public interface TaskRepository extends JpaRepository<Task, Integer>{

}
