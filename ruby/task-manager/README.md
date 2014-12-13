#Task Manager Pro v1.0

Base coden taken from [makersquare/ruby-course](https://github.com/makersquare/ruby-course/tree/task-manager).

###Project Requirements (Part 1)

- A new project can be created with a name.
	- This must automatically generate and assign the new project a unique id.
- A new task can be created with a project id, description, and priority number.
- A task can be marked as complete, specified by id.
- A project can retrieve a list of all complete tasks, sorted by creation date.
- A project can retrieve a list of all incomplete tasks, sorted by priority.
- If two tasks have the same priority number, the older task gets priority

###Project Requirements (Part 2)

- Write a `TerminalClient` class that interacts with your application through the terminal.


###Test Results

#####Project
  	exists
  	is created with a name
  	automatically gets an id upon creation
  	
###### #add_task

    can add tasks to an existing project
    
###### #mark_as_complete

    marks the task as complete
    
###### #complete_tasks

when there is only one task completed
   
   	returns the complete task
   	
when there are many tasks completed

	retrieves a list of all completed tasks, sorted by creation date
	
###### #incomplete_tasks

when there is only one incompleted task

	returns the incompleted task
	
when there are many incompleted tasks with different priorities

	retrieves a list of all incompleted tasks sorted by priority
	
when there are many incompleted tasks with same priorities
	
	retrieves a list of all incompleted tasks sorted by date

#####Task
	exists
###### #initialize
    starts with a description
    belongs to a project
    starts with a priority number
    starts with status 'incomplete'
    has its own id
    has a creation date and time

**Finished in 0.01167 seconds (files took 0.13426 seconds to load)**
######17 examples, 0 failures