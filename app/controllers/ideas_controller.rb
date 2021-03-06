class IdeasController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@ideas = Idea.all
	end

	def new
		@idea = Idea.new
	end

	def create
		current_user.ideas.create(idea_params)
		redirect_to root_path
	end

	def edit 
		@idea = Idea.find(params[:id])
	end

	def show 
		@idea = Idea.find(params[:id])
	end

	def update
		@idea = Idea.find(params[:id])
		@idea.update_attributes(idea_params)
		redirect_to root_path
	end

	def destroy
		@idea = Idea.find(params[:id])
		@idea.destroy
		redirect_to root_path
	end

	private

	def idea_params
		params.require(:idea).permit(:title, :plot, :character, :setting, :notes)
	end
end
