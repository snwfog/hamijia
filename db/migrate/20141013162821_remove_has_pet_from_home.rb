class RemoveHasPetFromHome < ActiveRecord::Migration
  def change
    remove_column :homes, :has_pet
  end
end
