class RenamePolyUserToRole < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :user_type, :role_type
      t.rename :user_id, :role_id
    end
  end
end
