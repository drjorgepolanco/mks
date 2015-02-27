#Task Manager Pro v1.0

###Open:
	$ bundle exec ruby pm.rb

###Features

- A new project can be created with a name (id is assigned automatically).
- New task can be created with a project id, description and priority number.
- Tasks can be marked as complete, specified by id.
- Projects can retrieve a list of all complete tasks, sorted by creation date.
- Projects can retrieve a list of all incomplete tasks, sorted by priority.
- If two tasks have the same priority number, the older task gets priority
- **TerminalClient** to interact with the application through the terminal.


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
###### #tasks
	retrieves a list of all tasks

#####Task
	exists
###### #initialize
    starts with a description
    belongs to a project
    starts with a priority number
    starts with status 'incomplete'
    has its own id
    has a creation date and time

**Finished in 0.02526 seconds (files took 0.28544 seconds to load)**
######18 examples, 0 failures
<hr>
###Screenshots
####Intro
![image_1](https://scontent-a-lga.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10858542_10152739102773961_2542577563641137404_n.jpg?oh=8e2127d3132f58f8c5474a382e8ccb67&oe=55029319)

####Creating new tasks
![image_2](https://scontent-b-lga.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10849950_10152739102783961_3424789121116862356_n.jpg?oh=0e2dfdbf7b60eed54f405426d5d321df&oe=54FF39D3)

####Show all tasks and mark task as 'complete'
![image_3](https://scontent-b-lga.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10849981_10152739102778961_2583689143971870292_n.jpg?oh=a62b52f2d198c682dfb765ea11433798&oe=550EDC65)

####Show all tasks
![image_4](https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/1394783_10152739102813961_2377678354432707274_n.jpg?oh=3074c97eb335a630b2bc4d696b4f4840&oe=550970E4&__gda__=1430635227_fb309d5437926359bb5a519ae71c2af4)

####Show complete and incomplete tasks separately
![image_5](https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/10556381_10152739102808961_3772179752261820876_n.jpg?oh=88cc08760332e9753ea6e7c11fe8d1be&oe=550796BF&__gda__=1426316299_a9c3a77efa69c0019c8602bd120dd001)