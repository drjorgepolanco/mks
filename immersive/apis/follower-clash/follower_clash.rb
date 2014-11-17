require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('drjorgepolanco')
user2 = UserComparer::User.new('maximashi')
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"

comparer = UserComparer::Comparer.new(user1, user2)

puts "The most popular user is: #{comparer.compare_followers}"

puts "#{user1.username} is following #{user1.friends} users."
puts "#{user2.username} is following #{user2.friends} users."

puts "#{user1.username} has posted #{user1.tweets} tweets."
puts "#{user2.username} has posted #{user2.tweets} tweets."

puts "The most active tweeter is #{comparer.compare_tweets}."

puts "#{user1.username} has favourited #{user1.favourites} tweets."
puts "#{user2.username} has favourited #{user2.favourites} tweets."