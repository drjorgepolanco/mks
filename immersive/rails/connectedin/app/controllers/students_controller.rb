class StudentsController < ApplicationController
	def polanco
		@student = {
			name: "Jorge Polanco",
			image: "https://avatars0.githubusercontent.com/u/5591545?v=3&s=460",
			twitter: "@drjorgepolanco"
		}
	end

	def clarke
		@student = {
			name: "Mateo Clarke",
			image: "https://avatars1.githubusercontent.com/u/5697474?v=3&s=460",
			twitter: "@MateoClarke"
		}
	end

	def chatham
		@student = {
			name: "Gene Chatham",
			image: "https://avatars2.githubusercontent.com/u/5798112?v=3&s=460",
			twitter: "@GeneChatham"
		}
	end

	def seidman
		@student = {
			name: "Mayer Seidman",
			image: "https://avatars0.githubusercontent.com/u/5168405?v=3&s=460",
			twitter: "@MayerSeidman"
		}
	end
end