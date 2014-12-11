class AlterTypePet2 < ActiveRecord::Migration
  def change
    change_table :pets do |pet_table|
      pet_table.remove :kind
      pet_table.change :species, :string
      pet_table.change :family, :string
    end
  end
end
