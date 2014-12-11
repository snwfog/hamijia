class AddMoreFieldToPet < ActiveRecord::Migration
  def change
    change_table :pets do |pet_table|
      pet_table.text :species
      pet_table.text :family
      pet_table.remove :kind
    end
  end
end
