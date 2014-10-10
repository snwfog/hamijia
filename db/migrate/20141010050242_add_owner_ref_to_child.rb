class AddOwnerRefToChild < ActiveRecord::Migration
  def change
    add_reference :children, :owner, index: true
  end
end
