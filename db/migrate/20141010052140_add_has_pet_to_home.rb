class AddHasPetToHome < ActiveRecord::Migration
  def change
    add_column :homes, :has_pet, :boolean
  end
end
