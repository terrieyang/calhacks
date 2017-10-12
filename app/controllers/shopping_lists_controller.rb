class ShoppingListsController < ApplicationController
	#list all Shopping Lists
	def index
		@shopping_lists = ShoppingList.all
	end

	#show info for one shopping list
	def show
		@shopping_list = ShoppingList.find(params[:id])
	end

	#form for a new shopping list
	def new
		@shopping_list = ShoppingList.new
	end

	#edit an shopping list
	def edit
		@shopping_list = ShoppingList.find(params[:id])
	end

	#update shopping list
	def update
	    @shopping_list = ShoppingList.find(params[:id])
	    if @shopping_list.update(shoppinglist_params)
	      redirect_to @shopping_list, notice: "Shopping list successfully updated!"
	    else
	      render :edit
	    end
	 end

	#creates the new shopping list
	def create
		@shopping_list = ShoppingList.new(shoppinglist_params)
		if @shopping_list.save
			redirect_to @shopping_list, notice: 'Shopping list successfully added!'
			# render :show
		else
			render :new
		end
	end

	#delete shopping list
	def destroy
		@shopping_list = ShoppingList.find(params[:id])
		@shopping_list.destroy
		redirect_to shopping_lists_url, alert: "ShoppingList successfully deleted!"
	end

	def shoppinglist_params
		params.require(:shopping_list).permit(:date)
	end
end
