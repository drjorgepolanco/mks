class TM::Project
	attr_reader :name, :id

	@@counter = 0

	def initialize(name)
		@name = name
		@@counter += 1
		@id = @@counter
	end

	def new_task(task)
		task.project_id = @id
		@task_list << task
	end
end