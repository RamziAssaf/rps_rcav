class RpsController < ApplicationController
	
	def rock_action
		@user_move = "rock"
		@computer_move = ["rock", "paper", "scissors"].sample
		@user_link_image = "http://localhost:3000/assets/images/#{@user_move}.png"
		@computer_link_image = "http://localhost:3000/assets/images/#{@computer_move}.png"
		if @user_move == @computer_move
			@results = "You tied!"
			@label_type = "warning"
		elsif @computer_move == "paper"
			@results = "You lost!"
			@label_type = "danger"
		elsif @computer_move == "scissors"
			@results = "You won!"
			@label_type = "success"
		end

		render("rock_action.html.erb")
	end
	
	def paper_action
		@user_move = "paper"
		@computer_move = ["rock", "paper", "scissors"].sample
		@user_link_image = "http://localhost:3000/assets/images/#{@user_move}.png"
		@computer_link_image = "http://localhost:3000/assets/images/#{@computer_move}.png"
		if @user_move == @computer_move
			@results = "You tied!"
			@label_type = "warning"
		elsif @computer_move == "rock"
			@results = "You won!"
			@label_type = "success"
		elsif @computer_move == "scissors"
			@results = "You lost!"
			@label_type = "danger"
		end
		
		render("paper_action.html.erb")
	end
	
	def scissors_action
		@user_move = "scissors"
		@computer_move = ["rock", "paper", "scissors"].sample
		@user_link_image = "http://localhost:3000/assets/images/#{@user_move}.png"
		@computer_link_image = "http://localhost:3000/assets/images/#{@computer_move}.png"
		if @user_move == @computer_move
			@results = "You tied!"
			@label_type = "warning"
		elsif @computer_move == "rock"
			@results = "You lost!"
			@label_type = "danger"
		elsif @computer_move == "paper"
			@results = "You won!"
			@label_type = "success"
		end

		render("scissors_action.html.erb")
	end

end