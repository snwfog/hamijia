class RemoveOwnerRefFromHome < ActiveRecord::Migration
  def change
    remove_reference :homes, :owner
  end
end
