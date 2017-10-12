class AddNameToInventories < ActiveRecord::Migration[5.0]
  def change
  	add_column :inventories, :name, :string
  end
end
