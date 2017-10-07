class InventoriesController < ApplicationController

	def index
		@inventories = Inventory.all
	end

	#show info for inventory
	def show
		@inventory = Inventory.find(params[:id])
	end

	#form for a new inventory
	def new
		@inventory = Inventory.new
	end

	#edit an inventory
	def edit
		@inventory = Inventory.find(params[:id])
	end

	#update an inventory
	def update
		@inventory = Inventory.find(params[:id])
    	if @inventory.update(inventory_params)
	      redirect_to @inventory, notice: "Inventory successfully updated!"
	    else
	      render :edit
    	end
	end

	#creates the new inventory
	def create
		@inventory = Inventory.new(inventory_params)
		if @inventory.save
			redirect_to @inventory, notice: 'Inventory successfully created!'
			render :show
		# else
			render :new
		end
	end

	#delete inventory
	def destroy
		@inventory = Inventory.find(params[:id])
		@inventory.destroy
		redirect_to inventories_url, alert: "Inventory successfully deleted!"
	end

	def inventory_params
		params.require(:inventory).permit(:name)
	end

end
