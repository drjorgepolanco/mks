require 'unirest'

# To verify there is an actual communication. Returns 200 if everything went fine.
# --------------------------------------------------------------------------------

# response = Unirest.get('http://makerblog.herokuapp.com/posts',
# 	headers: {"Accept" => "application/json"})

# puts response
# puts response.code

module MakerBlog
	class Client

		def initialize
			@makerblog_url = "http://makerblog.herokuapp.com/posts/"
		end

		def list_posts
			response = Unirest.get(@makerblog_url,
				headers: {"Accept" => "application/json"})
			posts = response.body
			posts.each do |post|
				puts "ID: #{post["id"]}"
				puts "Title: \"#{post["title"]}\" by #{post["name"].split.map(&:capitalize).join(' ')}"
				puts "Content: #{post["content"]}."
				puts "-" * 30
				puts response_code(response.code)
			end
		end


		def show_post(id)
			url = @makerblog_url + id
			response = Unirest.get(url,
				headers: {"Accept" => "application/json"})
			post = response.body
			puts "\"#{post["title"]}\": #{post["content"]}"
			puts "_" * 40
			puts response_code(response.code)
		end

		def create_post(name, title, content)
			url = @makerblog_url
			payload = {:post => {'name' => name, 'title' => title, 'content' => content}}

			response = Unirest.post(url,
				headers: {"Accept" => "application/json",
									"Content-Type" => "application/json"},
									parameters: payload)

			post = response.body
			puts "You have succesfully created a new post:"
			puts "ID: #{post["id"]}"
			puts "Title: \"#{post["title"]}\" by #{post["name"]}"
			puts "Content: #{post["content"]}"
			puts "_" * 40
			puts response_code(response.code)
		end

		def edit_post(id, options = {})
			url = @makerblog_url + id
			params = {}

			params[:name] = options[:name] unless options[:name].nil?
			params[:title] = options[:title] unless options[:title].nil?
			params[:content] = options[:content] unless options[:content].nil?

			response = Unirest.put(url,
				parameters: {:post => params},
				headers: {"Accept" => "application/json",
									"Content-Type" => "application/json"})

			post = response.body
			puts "You have succesfully updated the post:"
			puts "ID: #{post["id"]}"
			puts "Title: \"#{post["title"]}\" by #{post["name"]}"
			puts "Content: #{post["content"]}"
			puts "_" * 40
			puts response_code(response.code)
		end

		def delete_post(id)
			url = @makerblog_url + id
			response = Unirest.delete(url, 
				headers: {"Accept" => "application/json"})
			puts "You have succesfully deleted the post #{id}."
			puts "_" * 40
			puts response_code(response.code)
		end

		private

		def response_code(code)
			code = code.to_s

			case code[0]
				when '1'
					puts "Informational"
				when '2'
					puts "Success"
				when '3'
					puts "Redirection"
				when '4'
					puts "Client Error"
				when '5'
					puts "Server Error"
				else
					puts "Unknown"
			end
		end
	end
end