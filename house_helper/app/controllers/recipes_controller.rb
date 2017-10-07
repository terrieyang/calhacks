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
		@recipe = Recipe.find(params[:id])
	end

	#update recipe
	def update
	    @recipe = Recipe.find(params[:id])
	    if @recipe.update(recipe_params)
	      redirect_to @recipe, notice: "Recipe successfully updated!"
	    else
	      render :edit
	    end
	 end

	#creates the new reicpe
	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to @recipe, notice: 'Recipe successfully created!'
		# else
		# 	render :new, :alert @recipes.errors
		end
	end

	#delete recipe
	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
    	redirect_to recipes_url, alert: "Recipe successfully deleted!"
	end

	def recipe_params
		params.require(:recipe).permit(:name, :servings, :rating, :target, :time)
	end

end
