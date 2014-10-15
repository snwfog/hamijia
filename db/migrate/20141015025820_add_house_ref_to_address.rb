class AddHouseRefToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :house, index: true
  end
end
