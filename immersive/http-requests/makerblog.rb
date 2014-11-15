require 'unirest'

# To verify there is an actual communication. Returns 200 if everything went fine.
# --------------------------------------------------------------------------------

# response = Unirest.get('http://makerblog.herokuapp.com/posts',
# 	headers: {"Accept" => "application/json"})

# puts response
# puts response.code

module MakerBlog
	class Client
		def list_posts
			response = Unirest.get("http://makerblog.herokuapp.com/posts",
				headers: {"Accept" => "application/json"})
			posts = response.body
			posts.each do |post|
				puts "-" * 10
				puts "ID: #{post["id"]}"
				puts "Title: \"#{post["title"]}\" by #{post["name"].split.map(&:capitalize).join(' ')}"
				puts "Content: #{post["content"]}."
			end
		end
	end
end

client = MakerBlog::Client.new
client.list_posts