class IngredientsController < ApplicationController
	#list all Ingredients
	def index
		@ingredients = Ingredient.all
	end

	#show info for one ingredient
	def show
		@ingredient = Ingredient.find(params[:id])
	end

	#form for a new ingredient
	def new
		@ingredient = Ingredient.new
	end

	#edit an ingredient
	def edit

	end

	#creates the new ingredient
	def create
		@ingredient = Ingredient.new(ingredient_params)
		if @ingredient.save
			redirect_to @ingredient, notice: 'Ingredient successfully added!'
			# render :show
		# else
		# 	render :new, :alert @recipes.errors
		end
	end

	#delete ingredient
	def destroy
		@ingredient.destroy
	end

	def ingredient_params
		params.require(:ingredient).permit(:name, :location, :category)
	end
end
