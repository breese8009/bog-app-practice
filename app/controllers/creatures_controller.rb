class CreaturesController < ApplicationController
	def index
		@creatures = Creature.all
	end 

	def new

	end 

	def create 
		names = params[:creature][:name]
		descriptions = params[:creature][:description]
		Creature.create({name: names, description: descriptions})
		redirect_to('/')
	end 

	def show
		id = params[:id]
		@creatures = Creature.find_by_id(id)
	end 

	def edit
		id = params[:id]
		@creatures = Creature.find_by_id(id)
	end

	def update
		id = params[:id]
		names = params[:creature][:name]
		descriptions = params[:creature][:description]
		@creatures = Creature.find_by_id(id)
		@creatures.update({name: names, description: descriptions})
		redirect_to("/")
	end

	def destroy
		id = params[:id]
		@creatures = Creature.find_by_id(id)
		@creatures.destroy
		redirect_to('/creatures')
	end 


end
