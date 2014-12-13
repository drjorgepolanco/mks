require_relative './lib/task-manager'
require 'colorize'

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