require_relative './lib/task-manager'
require 'colorize'

@manager = TM::Manager.new("The Manager")

puts ""
puts "  =======================================".colorize(:red)
puts "==   Welcome to Task Manager Pro® v1.0   ==".colorize(:red)
puts "  =======================================".colorize(:red)
puts ""


def intro
	puts "Use the following commands to interact with the Task Manager:".colorize(:cyan)
	puts ""
	puts "HELPME	-  Show these commands again."
	puts "ALLPRO	-  Displays a list of all the projects."
	puts "NEWPRO	-  To create new projects."
	puts "ADDTAS	-  To add new tasks to an existing project."
	puts "DONETA	-  To mark a task as 'complete'."
	puts "ALLTAS	-  To list all the tasks of a project."
	puts "COMPLE	-  To list all completed tasks of an existing project."
	puts "INCOMP	-  To list all incompleted tasks of an existing project."
end

intro

def user_choice
	puts " "
	@choice = puts "How do you want to start?".colorize(:magenta)
	@choice = gets.chomp.upcase

	case @choice
	when 'HELPME'
		intro
		user_choice
	when 'ALLPRO'
		@manager.show_projects
		user_choice
	when 'NEWPRO'
		project_title = puts "Please, write the name of your project:".colorize(:cyan)
		project_title = gets.chomp.split.map(&:capitalize).join(' ')

		@manager.add_project(project_title)
		puts "You have created the project '#{project_title.split.map(&:capitalize).join(' ')}'".colorize(:green)
		user_choice
	when 'ADDTAS'
		puts "You need to know the ID of the project to be able to add tasks.".colorize(:yellow)
		puts "Use ALLPRO to see a list of projects if don't remeber the ID.".colorize(:yellow)
		project_id = puts "Enter the project's ID:".colorize(:cyan)
		project_id = gets.chomp.to_i
		description = puts "Write the task you want to add:".colorize(:cyan)
		description = gets.chomp.capitalize
		priority = puts "Enter a priority from 1 to 3, being 1 the highest priority:".colorize(:cyan)
		priority = gets.chomp.to_i

		@manager.add_task_to_project(project_id, description, priority)
		puts "You have added the task '#{description.split.map(&:capitalize).join(' ')}' to Project #{project_id}.".colorize(:green)
		user_choice
	when 'DONETA'
		puts "You need to know the ID of the project and the task to mark it as complete.".colorize(:yellow)
		puts "Use ALLPRO to see a list of projects if don't remeber the ID.".colorize(:yellow)
		puts "Use INCOMP to see a list of the incompleted tasks inside a project if don't remeber the id.".colorize(:yellow)
		project_id = puts "Enter the project's ID:".colorize(:cyan)
		project_id = gets.chomp.to_i
		task_id = puts "Enter the task's ID:".colorize(:cyan)
		task_id = gets.chomp.to_i

		@manager.mark_task_as_complete(project_id, task_id)
		user_choice
	when 'ALLTAS'
		project_id = puts "Enter the project's ID:".colorize(:cyan)
		project_id = gets.chomp.to_i

		@manager.show_tasks(project_id)
		user_choice
	when 'COMPLE'
		project_id = puts "Enter the project's ID:".colorize(:cyan)
		project_id = gets.chomp.to_i

		@manager.show_complete_tasks(project_id)
		user_choice
	when 'INCOMP'
		project_id = puts "Enter the project's ID:".colorize(:cyan)
		project_id = gets.chomp.to_i

		@manager.show_incomplete_tasks(project_id)
		user_choice
	else
		puts "Unknown command".colorize(:red)
		user_choice
	end
end

user_choice





