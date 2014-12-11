class AlterTypePet < ActiveRecord::Migration
  def change
    change_table :pets do |pet_table|
      pet_table.change :kind, :string
      pet_table.change :species, :string
    end
  end
end
