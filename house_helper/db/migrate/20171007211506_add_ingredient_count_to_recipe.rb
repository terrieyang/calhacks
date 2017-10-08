class AddIngredientCountToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :ingredient_count, :integer, default: 10
  end
end
