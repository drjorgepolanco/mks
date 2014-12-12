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

	def add_task(description)
		project_id = @id
		new_task = TM::Task.new(description, project_id)
		@task_list << new_task
	end
end