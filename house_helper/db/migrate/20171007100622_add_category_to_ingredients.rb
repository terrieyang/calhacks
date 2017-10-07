class AddCategoryToIngredients < ActiveRecord::Migration[5.0]
  def change
  	  	add_column :ingredients, :category, :string
  end
end
