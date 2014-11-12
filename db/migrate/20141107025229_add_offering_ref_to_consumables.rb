class AddOfferingRefToConsumables < ActiveRecord::Migration
  def change
    add_reference :consumables, :offering, index: true
  end
end
