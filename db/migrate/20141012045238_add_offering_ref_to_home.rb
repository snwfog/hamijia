class AddOfferingRefToHome < ActiveRecord::Migration
  def change
    add_reference :homes, :offering, index: true
  end
end
