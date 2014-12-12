class TM::Task
	attr_reader :description, :project_id
	attr_accessor :priority

	def initialize(description, priority=1, project_id=1)
		@description = description
		@project_id = project_id
		@priority = priority
	end
end