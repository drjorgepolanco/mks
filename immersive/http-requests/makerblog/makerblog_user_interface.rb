require_relative 'makerblog'

client = MakerBlog::Client.new

puts "MakerBlog: The ultimate Post creating machine!"
puts "To get started, write what you want to do."

user_choice = puts "Please choose between: all, create, read, update and delete:"
user_choice = gets.chomp.downcase

case user_choice
when 'all'
  client.list_posts
when 'create'
  user_name = puts "Please, write your name:"
  user_name = gets.chomp.split.map(&:capitalize).join(' ')
  user_title = puts "Please, write a title for your Post:"
  user_title = gets.chomp.split.map(&:capitalize).join(' ')
  user_content = puts "Please, write the content of your Post:"
  user_content = gets.chomp

  client.create_post(user_name, user_title, user_content)
when 'read'
  user_post_id = puts "Please, provide the id of the post you want to read: "
  user_post_id = gets.chomp

  client.show_post(user_post_id)
when 'update'
  user_post_id = puts "Please, provide the id of the post you want to edit: "
  user_post_id = gets.chomp
  puts "All fields are required. I decided not to implement the option to leave empty fields. Sorry for that!"
  user_name = puts "Please, write your name:"
  user_name = gets.chomp.split.map(&:capitalize).join(' ')
  user_title = puts "Please, write a new title for your Post:"
  user_title = gets.chomp.split.map(&:capitalize).join(' ')
  user_content = puts "Please, write a new content for your Post:"
  user_content = gets.chomp

  client.edit_post(user_post_id, {name: user_name, title: user_title, content: user_content})
when 'delete'
  user_post_id = puts "Please, provide the id of the post you want to delete: "
  user_post_id = gets.chomp

  client.delete_post(user_post_id)
else
  puts "Unknown command"
  user_choice
end

# client.list_posts
# client.show_post(19682)
# client.create_post("Kelvinator", "Amazing Title", "Esto se esta poniendo bueno!")
# client.edit_post(19682, {name: "Wampam Pimpan", title: "Mustang", content: "Un caballo de carro."})
# client.show_post(19637)
# client.delete_post(19682)