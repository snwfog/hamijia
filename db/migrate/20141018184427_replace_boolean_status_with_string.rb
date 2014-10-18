class ReplaceBooleanStatusWithString < ActiveRecord::Migration
  def change
    remove_column :students, :active
    remove_column :owners, :active

    add_column :offerings, :status, :string
    add_column :students, :status, :string
    add_column :owners, :status, :string
  end
end
