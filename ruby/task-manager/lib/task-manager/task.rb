class TM::Task
	attr_reader :description, :project_id
	def initialize(description, project_id=1)
		@description = description
		@project_id = project_id
	end
end