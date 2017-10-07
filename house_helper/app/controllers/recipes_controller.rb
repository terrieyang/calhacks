class RecipesController < ApplicationController

	#list all recipes
	def index
		@recipes = Recipe.all
	end

	#show info for one recipe
	def show
		@recipe = Recipe.find(params[:id])
	end

	#form for a new recipe
	def new
		@recipe = Recipe.new
	end

	#edit a recipe
	def edit

	end

	#creates the new reicpe
	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to @recipe, notice: 'Recipe successfully created!'
			render :show
		else
			render :new, :alert @recipes.error
	end

	#delete recipe
	def destroy
		@recipe.destroy
	end

	def recipe_params
		params.require(:recipe).permit(:name, :servings, :rating, :target, :time)

end
