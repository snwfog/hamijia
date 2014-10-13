class AddActiveToOffering < ActiveRecord::Migration
  def change
    add_column :offerings, :active, :boolean
  end
end
