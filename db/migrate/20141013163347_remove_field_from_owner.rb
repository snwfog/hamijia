class RemoveFieldFromOwner < ActiveRecord::Migration
  def change
    remove_column :owners, :email
    remove_column :owners, :first_name
    remove_column :owners, :last_name
    remove_column :owners, :phone_number
  end
end
