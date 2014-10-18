class AddNameToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :name, :string
  end
end
