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
		puts "====|=|===================="
		puts " ID |-|    PROJECT NAME    "
		puts "====|=|===================="
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