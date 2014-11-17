require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('drjorgepolanco')
user2 = UserComparer::User.new('maximashi')
comparer = UserComparer::Comparer.new(user1, user2)


# Followers: The number of followers this account currently has.
# *********

puts "#{user1.username}'s follower count: #{user1.followers}."
puts "#{user2.username}'s follower count: #{user2.followers}."

puts "The most popular user is: #{comparer.compare_followers}"


# Friends: The number of users this account is following (AKA their “followings”). 
# *******

puts "#{user1.username} is following #{user1.friends} users."
puts "#{user2.username} is following #{user2.friends} users."


# Tweets
# ******

puts "#{user1.username} has posted #{user1.tweets} tweets."
puts "#{user2.username} has posted #{user2.tweets} tweets."

puts "The most active tweeter is #{comparer.compare_tweets}."


# Favourites: The number of tweets a user has favorited in the account’s lifetime. 
# **********

puts "#{user1.username} has favourited #{user1.favourites} tweets."
puts "#{user2.username} has favourited #{user2.favourites} tweets."


# Lists: The number of public lists that this user is a member of.
# *****

puts "#{user1.username} is member of #{user1.lists} public lists."
puts "#{user2.username} is member of #{user2.lists} public lists."

# Status: A user's last tweet or retweet.
# ******

puts "#{user1.username}'s last tweet or retweet is: #{user1.status}"
puts "#{user2.username}'s last tweet or retweet is: #{user2.status}"

