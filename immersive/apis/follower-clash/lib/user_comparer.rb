require 'rubygems'
require 'bundler/setup'
require 'twitter'

module UserComparer
	class User
		attr_reader :username

		def initialize(username)
			@username = username
			@client = Twitter::REST::Client.new do |config|
				config.consumer_key = ENV['CONSUMER_KEY']
				config.consumer_secret = ENV['CONSUMER_SECRET']
				config.access_token = ENV['ACCESS_TOKEN']
				config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
			end
		end

		def followers
			@client.user(@username).followers_count
		end

		def friends
			@client.user(@username).friends_count
		end

		def tweets
			@client.user(@username).tweets_count
		end

		def favourites
			@client.user(@username).favourites_count
		end

		def lists
			@client.user(@username).listed_count
		end

		def status_time
			@client.user(@username).status.created_at.asctime
		end

		def status
			@client.user(@username).status.text
		end

		def created_at
			@client.user(@username).created_at.asctime
		end
	end


	class Comparer

		def initialize(user1, user2)
			@user1 = user1
			@user2 = user2
		end

		def compare_followers
			if @user1.followers > @user2.followers
				@user1.username
			elsif @user1.followers < user2.followers
				@user2.username
			else
				puts "Both users have the same number of followers."
			end
		end

		def compare_friends
			if @user1.friends > @user2.friends
				@user1.username
			elsif @user1.friends < @user2.friends
				@user2.username
			else
				puts "Both users are following the same amount of users."
			end
		end

		def compare_tweets
			if @user1.tweets > @user2.tweets
				@user1.username
			elsif @user1.tweets < @user2.tweets
				@user2.username
			else
				puts "Both users have the same amount of tweets."
			end
		end	 	 
	end
end