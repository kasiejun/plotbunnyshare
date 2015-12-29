class IdeasController < ApplicationController
	def index
		@idea = Idea.order("RANDOM()").first
	end

	def new
		@idea = Idea.new
	end

	def create
		Idea.create(idea_params)
		redirect_to root_path
	end

	private

	def idea_params
		params.require(:idea).permit(:title, :plot, :character, :setting, :notes)
	end
end
