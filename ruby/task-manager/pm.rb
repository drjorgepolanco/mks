require_relative './lib/task-manager'

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
end