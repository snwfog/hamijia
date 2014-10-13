class RemoveHomeRefToOffering < ActiveRecord::Migration
  def change
    remove_column :offerings, :home_id
  end
end
