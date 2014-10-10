class CreateConsumables < ActiveRecord::Migration
  def change
    create_table :consumables do |t|
      t.string :description
      t.float :charges

      t.timestamps
    end
  end
end
