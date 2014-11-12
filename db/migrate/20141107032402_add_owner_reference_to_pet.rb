class AddOwnerReferenceToPet < ActiveRecord::Migration
  def change
    add_reference :pets, :owner, index: true
  end
end
