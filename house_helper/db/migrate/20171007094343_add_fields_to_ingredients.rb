class AddFieldsToIngredients < ActiveRecord::Migration[5.0]
  def change
  	add_column :ingredients, :name, :string
  	add_column :ingredients, :location, :string
  end
end
