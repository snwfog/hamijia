class AddTypeToPolymorphicUser < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :string
    add_column :users, :user_id, :integer
  end
end
