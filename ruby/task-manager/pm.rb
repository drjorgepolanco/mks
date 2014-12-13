require_relative './lib/task-manager'
require 'colorize'

class TM::Manager
	attr_reader :project_list, :name

	def initialize(name)
		@name = name 
		@project_list = []
	end

	def add_project(name)
		new_project = TM::Project.new(name)
		@project_list << new_project
	end

	def add_task_to_project(project_id, description, priority, status='incomplete')
		project = @project_list[project_id - 1] 
		new_task = project.add_task(description, priority, status)
	end

	def mark_task_as_complete(project_id, task_id)
		project = @project_list.find {|project| project.id == project_id}
		project.mark_as_complete(task_id)
	end

	def show_complete_tasks(project_id)
		project = @project_list[project_id - 1]
		project.complete_tasks
	end

	def show_incomplete_tasks(project_id)
		project = @project_list[project_id - 1]
		project.incomplete_tasks
	end

	def show_projects
		puts " ID |-| PROJECT NAME "
		puts "====|=|=============="
		@project_list.each do |project|
			if project.id >= 1 && project.id <= 9
				puts "  #{project.id} |-| #{project.name.split(/ |\_/).map(&:capitalize).join(' ')}"
			else
				puts " #{project.id} |-| #{project.name.split(/ |\_/).map(&:capitalize).join(' ')}"
			end
		end
	end

	def show_tasks(project_id)
		project = @project_list.find {|project| project.id == project_id}
		project.tasks
	end
end


manager = TM::Manager.new

puts "Welcome to Task Manager Pro® v1.0"
puts "How can I help you?"

puts "Use the following commands to interact with the Task Manager:"

puts "HELP 				- Show these commands again."
puts "ALL     		- Displays a list of all the projects."
puts "NEW 				- To create new projects."
puts "ADD      		- To add new tasks to an existing project."
puts "DONE 				- To mark a task as 'complete'."
puts "COMPLETE 		- To list all completed tasks of an existing project."
puts "INCOMPLETE 	-	To list all incompleted tasks of an existing project."

