class IngredientsController < ApplicationController
	#list all Ingredients
	def index
		@ingredients = Ingredient.all
	end

	#show info for one ingredient
	def show
		@ingredients = Ingredient.find(params[:id])
	end

	#form for a new ingredient
	def new
		@ingredients = Ingredient.new
	end

	#edit an ingredient
	def edit

	end

	#creates the new ingredient
	def create
		@ingredients = Ingredient.new(ingredient_params)
		if @ingredient.save
			redirect_to @ingredient, notice: 'Ingredient successfully added!'
			render :show
		# else
		# 	render :new, :alert @recipes.errors
		end
	end

	#delete ingredient
	def destroy
		@ingredient.destroy
	end

	def recipe_params
		params.require(:ingredient).permit(:name, :location)
	end
end
