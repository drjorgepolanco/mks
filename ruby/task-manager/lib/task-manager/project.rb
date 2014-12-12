class TM::Project
	attr_reader :name, :id
	attr_accessor :task_list

	@@counter = 0

	def initialize(name)
		@name = name
		@@counter += 1
		@id = @@counter
		@task_list = []
	end

	def add_task(description, priority)
		project_id = @id
		new_task = TM::Task.new(description, priority: priority, project_id: project_id)
		@task_list << new_task
	end

	def mark_as_complete(id)
		task = @task_list.find {|item| item.id == id}
		task.status = 'complete'
	end
end