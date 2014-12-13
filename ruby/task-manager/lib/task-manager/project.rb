class TM::Project
	attr_reader :name, :id, :task_list

	@@counter = 0

	def initialize(name)
		@name = name
		@@counter += 1
		@id = @@counter
		@task_list = []
	end

	def add_task(description, priority, status='incomplete')
		project_id = @id
		new_task = TM::Task.new(description, priority: priority, status: status, project_id: project_id)
		@task_list << new_task
	end

	def mark_as_complete(task_id)
		task = @task_list.find {|task| task.id == task_id}
		task.status = 'complete'
	end

	def complete_tasks
		tasks = @task_list.select {|task| task.status == 'complete'}
		tasks.sort_by! {|task| task.created_at}
	end

	def incomplete_tasks
		tasks = @task_list.select {|task| task.status == 'incomplete'}
		tasks.sort_by! {|task| [task.priority, task.created_at]}
	end
end