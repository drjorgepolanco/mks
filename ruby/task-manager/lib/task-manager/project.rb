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
		puts " "
		puts "The project \"#{@name.split(/ |\_/).map(&:capitalize).join(' ').colorize(:bold)}\" has the following \"complete\" tasks:"
		puts "====|=|===========================|=|==========|=|============|=|================="
		puts " ID |-|        DATE CREATED       |-| PRIORITY |-|   STATUS   |-|   DESCRIPTION  "
		puts "====|=|===========================|=|==========|=|============|=|================="
		tasks = @task_list.select {|task| task.status == 'complete'}
		tasks.sort_by! {|task| task.created_at}
		tasks.each do |task|
			if task.priority == 1 || task.priority == ' high '
				task.priority = ' high '
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
				end
			elsif task.priority == 2 || task.priority == 'medium'
				task.priority = 'medium'
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
				end
			else
				task.priority = ' low  '
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
				end
			end
		end
	end

	def incomplete_tasks
		puts " "
		puts "The project \"#{@name.split(/ |\_/).map(&:capitalize).join(' ').colorize(:bold)}\" has the following \"incomplete\" tasks:"
		puts "====|=|===========================|=|==========|=|============|=|================="
		puts " ID |-|        DATE CREATED       |-| PRIORITY |-|   STATUS   |-|   DESCRIPTION  "
		puts "====|=|===========================|=|==========|=|============|=|================="
		tasks = @task_list.select {|task| task.status == 'incomplete'}
		tasks.sort_by! {|task| [task.priority, task.created_at]}
		tasks.each do |task|
			if task.priority == 1 || task.priority == ' high '.colorize(:red)
				task.priority = ' high '.colorize(:red)
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
				end
			elsif task.priority == 2 || task.priority == 'medium'.colorize(:yellow)
				task.priority = 'medium'.colorize(:yellow)
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
				end
			else
				task.priority = ' low  '.colorize(:light_yellow)
				if task.id >= 1 && task.id <= 9											
					puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
				else
					puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
				end
			end
		end
	end

	def tasks
		puts " "
		puts "The project '#{@name.split(/ |\_/).map(&:capitalize).join(' ').colorize(:bold)}' has the following tasks:"
		puts "====|=|===========================|=|==========|=|============|=|================="
		puts " ID |-|        DATE CREATED       |-| PRIORITY |-|   STATUS   |-|   DESCRIPTION  "
		puts "====|=|===========================|=|==========|=|============|=|================="
		@task_list.each do |task|
			if task.status == 'incomplete'
				if task.priority == 1 || task.priority == ' high '.colorize(:red)
					task.priority = ' high '.colorize(:red)
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
					end
				elsif task.priority == 2 || task.priority == 'medium'.colorize(:yellow)
					task.priority = 'medium'.colorize(:yellow)
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
					end
				else
					task.priority = ' low  '.colorize(:light_yellow)
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-| #{task.status.colorize(:red)} |=| #{task.description}"
					end
				end
			else
				if task.priority == 1 || task.priority == ' high '
					task.priority = ' high '
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
					end
				elsif task.priority == 2 || task.priority == 'medium'
					task.priority = 'medium'
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
					end
				else
					task.priority = ' low  '
					if task.id >= 1 && task.id <= 9											
						puts "  #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
					else
						puts " #{task.id} |-| #{task.created_at} |-|  #{task.priority}  |-|  #{task.status.colorize(:green)}  |=| #{task.description}"
					end
				end
			end
		end
	end
end