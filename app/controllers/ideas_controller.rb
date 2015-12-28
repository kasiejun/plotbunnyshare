class IdeasController < ApplicationController
	def index
		@idea = Idea.order("RANDOM()").first
	end
end
