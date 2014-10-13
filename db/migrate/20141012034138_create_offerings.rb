class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|

      t.timestamps
    end
  end
end
