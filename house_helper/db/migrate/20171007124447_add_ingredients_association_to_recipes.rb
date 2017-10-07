class AddIngredientsAssociationToRecipes < ActiveRecord::Migration[5.0]
  def change
  	add_reference :ingredients, :recipe, index: true
  end
end
