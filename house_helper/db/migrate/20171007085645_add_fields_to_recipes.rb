class AddFieldsToRecipes < ActiveRecord::Migration[5.0]
  def change
  	add_column :recipes, :name, :string
  	add_column :recipes, :servings, :integer
  	add_column :recipes, :rating, :float
  	add_column :recipes, :target, :integer
  	add_column :recipes, :time, :integer
  end
end
