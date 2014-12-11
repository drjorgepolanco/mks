class TM::Task
	attr_accessor :description, :priority
	attr_reader :project_id

	def initialize(description, priority, project_id)
		@description = description
		@priority = priority
		@project_id = project_id
	end
end