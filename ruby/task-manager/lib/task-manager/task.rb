class TM::Task
	attr_reader :description, :project_id, :id, :created_at
	attr_accessor :priority, :status

	@@task_counter = 0
	
	def initialize(description, priority: 1, status: 'incomplete', project_id: 1, id: 1)
		@description = description
		@project_id = project_id
		@priority = priority
		@status = status
		@@task_counter += 1
		@id = @@task_counter
		@status = status
		@created_at = Time.now
	end
end