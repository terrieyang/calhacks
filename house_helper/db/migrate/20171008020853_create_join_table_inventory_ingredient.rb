class CreateJoinTableInventoryIngredient < ActiveRecord::Migration[5.0]
  def change
    create_join_table :inventories, :ingredients do |t|
      # t.index [:inventory_id, :ingredient_id]
      # t.index [:ingredient_id, :inventory_id]
    end
  end
end
