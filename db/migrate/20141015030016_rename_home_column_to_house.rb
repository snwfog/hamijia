class RenameHomeColumnToHouse < ActiveRecord::Migration
  def change
    rename_column :rooms, :home_id, :house_id
  end
end
