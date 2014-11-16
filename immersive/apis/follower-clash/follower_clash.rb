require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('drjorgepolanco')
user2 = UserComparer::User.new('maximashi')
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"