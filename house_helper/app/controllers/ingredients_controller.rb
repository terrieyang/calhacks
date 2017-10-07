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
		@ingredient = Ingredient.find(params[:id])
	end

	#update ingredient
	def update
	    @ingredient = Ingredient.find(params[:id])
	    if @ingredient.update(ingredient_params)
	      redirect_to @ingredient, notice: "Ingredient successfully updated!"
	    else
	      render :edit
	    end
	 end

	#creates the new ingredient
	def create
		@ingredient = Ingredient.new(ingredient_params)
		if @ingredient.save
			redirect_to @ingredient, notice: 'Ingredient successfully added!'
			# render :show
		else
			render :new
		end
	end

	#delete ingredient
	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy
		redirect_to ingredients_url, alert: "Ingredient successfully deleted!"
	end

	def ingredient_params
		params.require(:ingredient).permit(:name, :location, :category)
	end
end
