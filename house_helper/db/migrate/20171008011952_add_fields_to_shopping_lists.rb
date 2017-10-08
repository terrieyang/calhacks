class AddFieldsToShoppingLists < ActiveRecord::Migration[5.0]
  def change
  	add_column :shopping_lists, :date, :date
  end
end
