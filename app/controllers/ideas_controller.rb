class IdeasController < ApplicationController
	def index
		@idea = Idea.first
	end
end
