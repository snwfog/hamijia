class AddHomeRefToOffering < ActiveRecord::Migration
  def change
    add_reference :offerings, :home, index: true
  end
end
