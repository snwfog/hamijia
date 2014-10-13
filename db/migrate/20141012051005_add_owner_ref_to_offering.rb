class AddOwnerRefToOffering < ActiveRecord::Migration
  def change
    add_reference :offerings, :owner, index: true
  end
end
