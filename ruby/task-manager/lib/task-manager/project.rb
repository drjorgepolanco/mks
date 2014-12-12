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
		incomplete_tasks = tasks.sort_by! {|task| [task.priority, task.created_at]}
		puts " "
		puts "The project '#{@name.split(/ |\_/).map(&:capitalize).join(' ')}' has the following 'incomplete' tasks:"
		puts "====|=|===========================|=|==========|=|============|=|================="
		puts " ID |-|        DATE CREATED       |-| PRIORITY |-|   STATUS   |-|   DESCRIPTION  "
		puts "====|=|===========================|=|==========|=|============|=|================="
		incomplete_tasks.each do |task|
			if task.priority == 1
				task.priority = 'high'
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|   #{task.priority}   |-| #{task.status} |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|   #{task.priority}   |-| #{task.status} |=| #{task.description}"
				end
			elsif task.priority == 2
				task.priority = 'medium'
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status} |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status} |=| #{task.description}"
				end
			else
				task.priority = 'low'
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|   #{task.priority}    |-| #{task.status} |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|   #{task.priority}    |-| #{task.status} |=| #{task.description}"
				end
			end
		end
	end

	def tasks
		puts " "
		puts "The project '#{@name.split(/ |\_/).map(&:capitalize).join(' ')}' has the following tasks:"
		puts "====|=|===========================|=|==========|=|============|=|================="
		puts " ID |-|        DATE CREATED       |-| PRIORITY |-|   STATUS   |-|   DESCRIPTION  "
		puts "====|=|===========================|=|==========|=|============|=|================="
		@task_list.each do |task|
			if task.status == 'incomplete'
				if task.priority == 1
					task.priority = 'high'
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|   #{task.priority}   |-| #{task.status} |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|   #{task.priority}   |-| #{task.status} |=| #{task.description}"
					end
				elsif task.priority == 2
					task.priority = 'medium'
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status} |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status} |=| #{task.description}"
					end
				else
					task.priority = 'low'
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|   #{task.priority}    |-| #{task.status} |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|   #{task.priority}    |-| #{task.status} |=| #{task.description}"
					end
				end
			else
				if task.priority == 1
					task.priority = 'high'
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|   #{task.priority}   |-|  #{task.status}  |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|   #{task.priority}   |-|  #{task.status}  |=| #{task.description}"
					end
				elsif task.priority == 2
					task.priority = 'medium'
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status}  |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status}  |=| #{task.description}"
					end
				else
					task.priority = 'low'
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|   #{task.priority}    |-|  #{task.status}  |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|   #{task.priority}    |-|  #{task.status}  |=| #{task.description}"
					end
				end
			end
		end
	end
end
