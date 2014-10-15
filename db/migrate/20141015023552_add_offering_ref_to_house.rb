class AddOfferingRefToHouse < ActiveRecord::Migration
  def change
    add_reference :houses, :offering, index: true
  end
end
