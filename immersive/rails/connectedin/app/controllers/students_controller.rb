class StudentsController < ApplicationController

	def show
		student_name = params["student_name"]
		students = {
			"polanco" => {
				name: "Jorge Polanco",
				image: "https://avatars0.githubusercontent.com/u/5591545?v=3&s=460",
				twitter: "@drjorgepolanco"
			},
			"clarke" => {
				name: "Mateo Clarke",
				image: "https://avatars1.githubusercontent.com/u/5697474?v=3&s=460",
				twitter: "@MateoClarke"
			},
			"chatham" => {
				name: "Gene Chatham",
				image: "https://avatars2.githubusercontent.com/u/5798112?v=3&s=460",
				twitter: "@GeneChatham"
			},
			"seidman" => {
				name: "Mayer Seidman",
				image: "https://avatars0.githubusercontent.com/u/5168405?v=3&s=460",
				twitter: "@MayerSeidman"
			}
		}

		@student = students[student_name]
	end

	def index
		@params = params 
	end
end